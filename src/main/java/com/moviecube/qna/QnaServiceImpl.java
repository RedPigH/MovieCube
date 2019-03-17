package com.moviecube.qna;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	@Resource(name = "qnaFileUtils")
	private QnaFileUtils fileUtils;

	@Resource(name = "qnaDAO")
	private QnaDAO qnaDAO;

	@Override
	public Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception {

		return qnaDAO.selectQnaDetail(map);

	}

	Logger log = Logger.getLogger(this.getClass());

	@Override
	public List<Map<String, Object>> selectQnaList(Map<String, Object> map) throws Exception {
		return qnaDAO.selectQnaList(map);
	}

	@Override
	public void insertQna(Map<String, Object> map, HttpServletRequest request) throws Exception {

		qnaDAO.insertQna(map);

		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(map, request);
		for (int i = 0, size = list.size(); i < size; i++) {
			qnaDAO.insertFile(list.get(i));

			/*
			 * MultipartHttpServletRequest multipartHttpServletRequest =
			 * (MultipartHttpServletRequest) request; Iterator<String> iterator =
			 * multipartHttpServletRequest.getFileNames(); MultipartFile multipartFile =
			 * null; while (iterator.hasNext()) { multipartFile =
			 * multipartHttpServletRequest.getFile(iterator.next()); if
			 * (multipartFile.isEmpty() == false) {
			 * log.debug("-----------file start----------"); log.debug("name : " +
			 * multipartFile.getName()); log.debug("filename : " +
			 * multipartFile.getOriginalFilename());
			 * log.debug("----------file end-----------\n");
			 */
		}
	}

	// TODO Auto-generated method stub

	@Override
	public void updateQna(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		qnaDAO.updateQna(map);

	}

	@Override
	public void deleteQna(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		qnaDAO.deleteQna(map);

	}

	@Override
	public void replyQna(Map<String, Object> map, HttpServletRequest request) throws Exception {
		qnaDAO.replyQna(map, request);

	}

	@Override
	public void replyQna(Map<String, Object> map) throws Exception {
		qnaDAO.replyQna(map, null);
		// TODO Auto-generated method stub

	}

	@Override
	public void updateQna(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		
	}

	/*
	 * @Override public List<Map<String, Object>> selectNoticeList(Map<String,
	 * Object> map) throws Exception { // TODO Auto-generated method stub return
	 * noticeDAO.selectNoticeList(map);
	 */
}
