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
	 * insert : �������� ���
	 */
	public int insert(Myshop_noticeVO vo) {
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	/**
	 * selectAll : �������� list ������ȸ
	 */
	public ArrayList<Myshop_noticeVO> selectAll() {
		List<Myshop_noticeVO> list = sqlSession.selectList(namespace+".select_all");
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
		return sqlSession.delete(namespace+".total_count",nid);
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
	
	
}
