package com.shoppingmall.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingmall.vo.Myshop_memberVO;

@Repository
public class Myshop_memberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	/**
	 * insert : 회원가입 
	 */
	public int insert(Myshop_memberVO vo) {
		//sqlSession 객체의 메소드를 호출하여 실행결과를 가져옴
		
		return sqlSession.insert("mapper.member.join", vo);
	}

}
