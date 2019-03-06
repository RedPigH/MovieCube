package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("movieService")
public class MovieServieImpl implements MovieService {
	@Resource(name = "movieDAO")
	private MovieDAO movieDAO;

	@Override
	public List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception {

		return movieDAO.selectMovieList(map);
	}

}
