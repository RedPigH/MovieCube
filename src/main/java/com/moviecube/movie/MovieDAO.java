package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.common.AbstractDAO;

@Repository("movieDAO")
public class MovieDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectMovieList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("movie.selectMovieList", map);
	}

	public void insertMovie(Map<String, Object> map) throws Exception{
		insert("movie.insertMovie", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMovieDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("movie.selectMovieDetail", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMovieFileDetail(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("movie.selectMovieFileDetail", map);
	}
	
	public void modifyMovie(Map<String, Object> map) throws Exception{
		update("movie.modifyMovie", map);
	}

	public void deleteMovie(Map<String, Object> map) throws Exception{
		update("movie.deleteMovie", map);
	}
	
	public void insertFile(Map<String, Object> filelist) throws Exception{
	    insert("movie.insertFile", filelist);
	}
	
	public void insertFile2(Map<String, Object> map) throws Exception{
	    insert("movie.insertFile2", map);
	}
	
	public void updateFileList(Map<String, Object> map) throws Exception{
	    update("movie.updateFileList", map);
	}
	
	public void updateFileList2(Map<String, Object> map) {
		update("movie.updateFileList2", map);
	}
	
	public void modifyFile(Map<String, Object> map) {
		update("movie.modifyFile", map);
	}
	
	public void modifyFile2(Map<String, Object> map) {
		update("movie.modifyFile2", map);
	}

	public void deleteFile(Map<String, Object> map) {
		delete("movie.deleteFile", map);
		}

	public void deleteFile2(Map<String, Object> map) {
		delete("movie.deleteFile2", map);
	}

}