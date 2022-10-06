package com.shoppingmall.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingmall.vo.Myshop_reviewVO;

@Repository
public class Myshop_reviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.review";
	
	public int insert(Myshop_reviewVO vo) {
		return sqlSession.insert(namespace+".insert", vo);
	}
}
