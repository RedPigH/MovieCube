package com.moviecube.reserve;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("reserveDAO")
public class ReserveDAO extends AbstractDAO {

	public void insertReserve(Map<String, Object> map) throws Exception {

		insert("reservation.insertReservation", map);
	}

}
