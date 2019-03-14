package com.moviecube.qna;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.moviecube.common.CommonUtils;


@Component("qnaFileUtils")
public class QnaFileUtils {
	private static final String filePath = "C:\\muyi\\src\\main\\webapp\\resources\\upload\\qna";

	public List<Map<String, Object>> parseInsertFileInfo(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

		MultipartFile multipartFile = null;
		String QNA_ORGNAME = null;
		String QNA_FileExtension = null;
		String QNA_SAVNAME = null;

		List<Map<String, Object>> Qnalist = new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap = null;

		String QNA_NO = (String) map.get("QNA_NO");

		File file = new File(filePath);
		if (file.exists() == false) {
			file.mkdir();
		}

		while (iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if (multipartFile.isEmpty() == false) {
				QNA_ORGNAME = multipartFile.getOriginalFilename();
				QNA_FileExtension = QNA_ORGNAME.substring(QNA_ORGNAME.lastIndexOf("."));
				QNA_SAVNAME = CommonUtils.getRandomString() + QNA_FileExtension;

				file = new File(filePath + QNA_SAVNAME);
				multipartFile.transferTo(file);

				listMap = new HashMap<String, Object>();
				listMap.put("QNA_NO", QNA_NO);
				listMap.put("QNA_ORGNAME", QNA_ORGNAME);
				listMap.put("QNA_SAVNAME", QNA_SAVNAME);
				Qnalist.add(listMap);
			}

		}

		return Qnalist;

	}
}
