package com.shoppingmall.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingmall.vo.Myshop_ordersVO;

@Repository
public class Myshop_orderDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.orders";
	
	/**
	 * select_info : (test) �����ۼ��� �ʿ��� ����
	 */
	public Myshop_ordersVO select_info() {
		return sqlSession.selectOne(namespace+".info");
	}

}
