package com.shoppingmall.dao;

import java.util.ArrayList;
import java.util.List;

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
	 * selectAll : 공지사항 list 전부조회
	 */
	public ArrayList<Myshop_noticeVO> selectAll() {
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".select_all");
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
		return sqlSession.delete(namespace+".total_count",nid);
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
	
	
}
