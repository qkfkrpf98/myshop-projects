package com.shoppingmall.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingmall.vo.Myshop_noticeVO;

@Repository
public class Myshop_noticeDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.notice";
	
	/**
	 * insert : �������� ���
	 */
	public int insert(Myshop_noticeVO vo) {
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	/**
	 * selectAll : admin - �������� list ������ȸ
	 */
	public ArrayList<Myshop_noticeVO> selectAll() {
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".select_all");
		return (ArrayList<Myshop_noticeVO>) list;
	}
	/**
	 * selectAll : admin - �������� list ���ǰ˻�
	 */
	public ArrayList<Myshop_noticeVO> search_select(String text,String searchtype,String nsdate,String nedate){
		Map<String,String> param = new HashMap<String,String>();
		param.put("searchtype",searchtype);
		param.put("text",text);
		param.put("nsdate",nsdate);
		param.put("nedate", nedate);
		
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".admin_search_select",param);
		return (ArrayList<Myshop_noticeVO>) list;
	}
	
	/**
	 * totalCount : �������� ��
	 */
	public int totalCount() {
		return sqlSession.selectOne(namespace+".total_count");
	}
	
	/**
	 * delete : �������� ����
	 */
	public int delete(String nid) {
		System.out.println("dao����");
		return sqlSession.delete(namespace+".delete",nid);
	}

	/**
	 * select : �������� ���� ��ȸ
	 */
	public Myshop_noticeVO select(String nid) {
		return sqlSession.selectOne(namespace+".select",nid);
	}
	
	/**
	 * update : �������� ���� ����
	 */
	public int update(Myshop_noticeVO vo) {
		return sqlSession.update(namespace+".update",vo);
	}
	
	/**
	 * selectAll : ����� - �������� list ������ȸ
	 */
	public ArrayList<Myshop_noticeVO> user_selectAll(int startCount, int endCount) {
		Map<String,Integer> param = new HashMap<String,Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".user_select_all",param);
		return (ArrayList<Myshop_noticeVO>) list;
	}
	/**
	 * search_select: ����� - �������� list �˻���ȸ
	 */
	public ArrayList<Myshop_noticeVO>search_select(String text, String searchtype, int startCount, int endCount){
		System.out.println(text);
		System.out.println(searchtype);
		
		Map<String,String> param = new HashMap<String,String>();
		param.put("searchtype",searchtype);
		param.put("text",text);
		param.put("start",String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".search_select",param);
		return (ArrayList<Myshop_noticeVO>) list;
	}
}
