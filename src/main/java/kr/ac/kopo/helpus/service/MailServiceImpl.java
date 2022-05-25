package kr.ac.kopo.helpus.service;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import kr.ac.kopo.helpus.util.MailUtils;

@Service
public class MailServiceImpl implements MailService {
	private int size;
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	
	private String getKey(int size) {
		this.size = size;
		return getAuthCode();
	}
	
	private String getAuthCode() {
		Random random = new Random();
		StringBuffer buffer = new StringBuffer();
		int num = 0;
		
		while(buffer.length() < size) {
			num = random.nextInt(10);
			buffer.append(num);
		}
		
		return buffer.toString();
	}

	@Override
	public String sendAuthMail(String userEmail) {
		
		String authKey = getKey(6);
		
		try {
			MailUtils sendMail = new MailUtils(mailSender);
			sendMail.setSubject("HelpUs 회원가입 이메일 인증");
			sendMail.setText(new StringBuffer().append("<h1>[이메일 인증]</h1>")
					.append("<p>아래 링크를 클릭하시면 이메일 인증이 완료됩니다.</p>")
					.append("<a href='http://localhost:9092/signUpConfirm?email=")
					.append(userEmail)
					.append("&authKey=")
					.append(authKey)
					.append("' target='_blank'>이메일 인증</a>")
					.toString());
			sendMail.setFrom("poly.helpus@gmail.com", "HelpUs");
			sendMail.setTo(userEmail);
			sendMail.send();
		} catch(MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return authKey;
	}

}
