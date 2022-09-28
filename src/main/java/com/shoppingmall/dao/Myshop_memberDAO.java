package com.shoppingmall.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingmall.vo.Myshop_memberVO;
import com.shoppingmall.vo.SessionVO;

@Repository
public class Myshop_memberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	/**
	 * insert : ȸ������ 
	 */
	public int insert(Myshop_memberVO vo) {
		//sqlSession ��ü�� �޼ҵ带 ȣ���Ͽ� �������� ������
		
		return sqlSession.insert("mapper.member.join", vo);
	}
	/**
	 * idcheck : ���̵� �ߺ�Ȯ��
	 */
	public int idcheck(String id) {
		//sqlSession ��ü�� �޼ҵ带 ȣ���Ͽ� �������� ������
		
		return sqlSession.selectOne("mapper.member.idcheck", id);
	}
	
	public SessionVO select(Myshop_memberVO vo) {
		return sqlSession.selectOne("mapper.member.login", vo);
	}

}
