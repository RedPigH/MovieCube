package com.moviecube.event;

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

import com.moviecube.event.EventFileUtils;

@Service("eventService")
public class EventServiceImpl implements EventService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "eventDAO")
	private EventDAO EventDAO;

	@Resource(name = "eventFileUtils")
	private EventFileUtils fileUtils;

	@Override
	public List<Map<String, Object>> selectEventList(Map<String, Object> map) throws Exception {
		return EventDAO.selectEventList(map);
	}

	@Override
	public void insertEvent(Map<String, Object> map, HttpServletRequest request) throws Exception {
		EventDAO.insertEvent(map);

		List<Map<String, Object>> fileList = fileUtils.parseInsertFileInfo(map, request);

		for (int i = 0, size = fileList.size(); i < size; i++) {
			EventDAO.insertFile(fileList.get(i));
			/*
			 * List<Map<String, Object>> Filelist = fileUtils.parseInsertFileInfo(map,
			 * request); EventDAO.insertFile(Filelist.get(0));
			 * 
			 * MultipartHttpServletRequest multipartHttpServletRequest =
			 * (MultipartHttpServletRequest) request;
			 * 
			 * // HttpServletRequest 자체로는 Multipart형식. 데이터 조작하는데 어려움이 있기 때문에 //
			 * MultipartHttpServletRequest 형식으로 형 변환한다
			 * 
			 * Iterator<String> iterator = multipartHttpServletRequest.getFileNames(); //
			 * 이터레이터를 이용하여 request에 전송된 모든 name을 이용한다 => Map에 있는 데이터를 while문을 이용하여 순차적으로 접근함
			 * 
			 * MultipartFile multipartFile = null; while (iterator.hasNext()) {
			 * multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			 * 
			 * // MultipartFile객체에 request에서 파일 객체를 가져온다 // multipartHttpServletRequest의
			 * getFile() 메서드는 request에 저장된 파일의 name을 인자로 받는다. // 이 name을 Iterator를 통해서 가져오는데
			 * 그것이 Iterator.next() 메서드이다 if (multipartFile.isEmpty() == false) { // 실제 파일
			 * 정보가 있는지 검사한후에 아래의 메서드를 통해 파일의 정보를 출력한다(log.debug)
			 * 
			 * log.debug("------------- file start -------------"); log.debug("name : " +
			 * multipartFile.getName()); log.debug("filename : " +
			 * multipartFile.getOriginalFilename()); log.debug("size : " +
			 * multipartFile.getSize());
			 * log.debug("-------------- file end --------------\n"); }
			 */
		}

	}

	@Override
	public Map<String, Object> selectEventDetail(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		Map<String, Object> tempMap = EventDAO.selectEventDetail(map);
		resultMap.put("map", tempMap);

		List<Map<String, Object>> eventDetail = EventDAO.selectEventFileDetail(map);
		resultMap.put("eventDetail", eventDetail);
		return resultMap;
	}

	
	  @Override public Map<String, Object> selectEventDetail2(Map<String, Object>
	  map) throws Exception { return EventDAO.selectEventDetail2(map); }
	 

	@Override
	public void modifyEvent(Map<String, Object> map, HttpServletRequest request) throws Exception {
		EventDAO.modifyEvent(map);
		EventDAO.deleteFileList(map);

		List<Map<String, Object>> fileList = fileUtils.parseUpdateFileInfo(map, request);
		Map<String, Object> tempMap = null;


		for (int i = 0, size = fileList.size(); i < size; i++) {
			EventDAO.insertFile(fileList.get(i));
			/*
			 * tempMap = fileList.get(i); if (i == 0) {
			 * 
			 * if (tempMap.get("IS_NEW").equals("Y")) { EventDAO.insertFile(tempMap); } else
			 * { EventDAO.modifyFile(tempMap);
			 */
			
				}
			}
		
	

	/*
	 * @Override public Map<String, Object> checkEventFile(Map<String, Object> map)
	 * throws Exception { Map<String, Object> result = EventDAO.checkEventFile(map);
	 * 
	 * if (result == null) { result.put("CNT", 0); return result; }
	 * 
	 * return result; }
	 */
	@Override
	public void deleteEvent(Map<String, Object> map, HttpServletRequest request) throws Exception {
		EventDAO.deleteEvent(map);

	}

}
