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
	 * insert : 공지사항 등록
	 */
	public int insert(Myshop_noticeVO vo) {
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	/**
	 * selectAll : admin - 공지사항 list 전부조회
	 */
	public ArrayList<Myshop_noticeVO> selectAll() {
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".select_all");
		return (ArrayList<Myshop_noticeVO>) list;
	}
	/**
	 * selectAll : admin - 공지사항 list 조건검색
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
	 * totalCount : 공지사항 수
	 */
	public int totalCount() {
		return sqlSession.selectOne(namespace+".total_count");
	}
	
	/**
	 * delete : 공지사항 삭제
	 */
	public int delete(String nid) {
		System.out.println("dao진입");
		return sqlSession.delete(namespace+".delete",nid);
	}

	/**
	 * select : 공지사항 정보 조회
	 */
	public Myshop_noticeVO select(String nid) {
		return sqlSession.selectOne(namespace+".select",nid);
	}
	
	/**
	 * update : 공지사항 정보 수정
	 */
	public int update(Myshop_noticeVO vo) {
		return sqlSession.update(namespace+".update",vo);
	}
	
	/**
	 * selectAll : 사용자 - 공지사항 list 전부조회
	 */
	public ArrayList<Myshop_noticeVO> user_selectAll(int startCount, int endCount) {
		Map<String,Integer> param = new HashMap<String,Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".user_select_all",param);
		return (ArrayList<Myshop_noticeVO>) list;
	}
	/**
	 * search_select: 사용자 - 공지사항 list 검색조회
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
