package com.moviecube.movie;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.moviecube.movie.MovieDAO;

@Service("movieService")
public class MovieServiceImpl implements MovieService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="movieDAO")
	private MovieDAO MovieDAO;
	
	@Resource(name="movieFileUtils") // @Conponent 어노테이션을 이용하여 등록한 객체를 @Resource 어노테이션을 이용하여 객체를 선언 한다
	private MovieFileUtils fileUtils;

	@Override
	public List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception {
		return MovieDAO.selectMovieList(map);
	}

	@Override
	public void insertMovie(Map<String, Object> map, HttpServletRequest request) throws Exception {
		MovieDAO.insertMovie(map);
		
		// FileUtils 클래스를 이용하야 파일을 저장하고 그 데이터를 가져온 후 DB에 저장하는 로직
		List<Map<String,Object>> Filelist = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=Filelist.size(); i<size; i++){
            MovieDAO.insertFile(Filelist.get(i));
        }
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request; 
		// HttpServletRequest 자체로는 Multipart형식 데이터 조작하는데 어려움이 있기 때문에 MultipartHttpServletRequest 형식으로 형 변환한다
	    Iterator<String> iterator = multipartHttpServletRequest.getFileNames(); 
	    // 이터레이터를 이용하여 request에 전송된 모든 name을 이용한다 => Map에 있는 데이터를 while문을 이용하여 순차적으로 접근함
	    MultipartFile multipartFile = null;
	    while(iterator.hasNext()){ // hasNext() 메서드는 Iterator내에 그 다음 데이터의 존재 유무를 알려주고 , Next()메서드는 Interator내의 데이터를 가져온후, 커서를 다음위치로 이동시킨다
	        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	        // MultipartFile객체에 request에서 파일 객체를 가져온다
	        // multipartHttpServletRequest의 getFile() 메서드는 request에 저장된 파일의 name을 인자로 받는다.
	        // 이 name을 Iterator를 통해서 가져오는데 그것이 Iterator.next() 메서드이다
	        if(multipartFile.isEmpty() == false){ // 실제 파일 정보가 있는지 검사한후에 아래의 메서드를 통해 파일의 정보를 출력한다(log.debug)
	            log.debug("------------- file start -------------");
	            log.debug("name : "+multipartFile.getName());
	            log.debug("filename : "+multipartFile.getOriginalFilename());
	            log.debug("size : "+multipartFile.getSize());
	            log.debug("-------------- file end --------------\n");
	        }
	    }
	}
	

	@Override
	public Map<String, Object> selectMovieDetail(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = MovieDAO.selectMovieDetail(map);
		return resultMap;
	}

	@Override
	public void modifyMovie(Map<String, Object> map) throws Exception {
		MovieDAO.modifyMovie(map);
		
	}

	@Override
	public void deleteMovie(Map<String, Object> map) throws Exception {
		MovieDAO.deleteMovie(map);
		
	}
}
