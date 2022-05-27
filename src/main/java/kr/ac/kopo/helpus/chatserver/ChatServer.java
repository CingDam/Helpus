package kr.ac.kopo.helpus.chatserver;

import java.util.Vector;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatServer extends TextWebSocketHandler {

	//vector : Thread안정성이 높음 여러 자원이 높은거, arrayList : Thread 안정성이 약함,나만쓰면 사용
		Vector<WebSocketSession> list;
		
		public ChatServer() {
			super();
			
			if(list == null)
				list = new Vector<WebSocketSession>();
		}

		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			super.afterConnectionEstablished(session);
			list.add(session);
			
			System.out.println("연결 : " + session.getRemoteAddress());
		}

		@Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

			
			String user= (String) session.getAttributes().get("user");
			
			System.out.println("메시지 : " + message.getPayload() + "," + user);
			
			for(WebSocketSession client : list) {
				client.sendMessage(new TextMessage(message.getPayload()));
			}
			super.handleTextMessage(session, message);
		}

		@Override
		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
			super.afterConnectionClosed(session, status);
			list.remove(session);
			System.out.println("끊김 : " + session.getRemoteAddress() );
		}

}
