package com.shoppingmall.dao;

import java.util.ArrayList;
import java.util.List;

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
	 * select_info : (test) 리뷰작성에 필요한 정보
	 */
	public Myshop_ordersVO select_info(String oid) {
		return sqlSession.selectOne(namespace+".info",oid);
	}
	/**
	 * select: 사용자 주문리스트
	 */
	public ArrayList<Myshop_ordersVO> select(String id) {
		List<Myshop_ordersVO> list = sqlSession.selectList(namespace+".select",id);
		return (ArrayList<Myshop_ordersVO>)list;
	}

}
