package com.moviecube.faq;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("faqDAO")
public class FaqDAO extends AbstractDAO {

	public List<Map<String, Object>> selectFaqList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>) selectList("faq.selectFaqList", map);
	}

	public void insertFaq(Map<String, Object> map) throws Exception {
		insert("faq.insertFaq", map);
		// TODO Auto-generated method stub

	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFaqDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("faq.selectFaqDetail", map);
	}

	public void updateFaq(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		update("faq.updateFaq",map);
	}

	public void deleteFaq(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		update("faq.deleteFaq",map);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqSearch0(String isSearch) {
		return (List<Map<String, Object>>)selectList("faq.faqSearch0", "%"+isSearch+"%");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> faqSearch1(String isSearch) {
		return (List<Map<String, Object>>)selectList("faq.faqSearch1", "%"+isSearch+"%");
	}
}
