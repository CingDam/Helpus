package kr.ac.kopo.helpus.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.helpus.model.DetailImage;

public class Uploader<T extends UploadFile> {
	
	final String uploadPath = "D:/upload/";

	public List<T> makeList(List<MultipartFile> files, Class<T> type) throws Exception {
		List<T> result = new ArrayList<>();
		
		for(MultipartFile file : files) 
			
			if(!file.isEmpty()) {
				
				String filename = file.getOriginalFilename();
				String uuid = UUID.randomUUID().toString();
				
				System.out.println(filename);
				
				file.transferTo(new File(uploadPath + uuid + "_" + filename));
				
				T item = type.newInstance();
				item.setFilename(filename);
				item.setUuid(uuid);
				
				result.add(item);
			}
		return result;
	}

}
