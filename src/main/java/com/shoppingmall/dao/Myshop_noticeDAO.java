package com.shoppingmall.dao;

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

}
