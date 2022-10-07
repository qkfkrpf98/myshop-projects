package com.shoppingmall.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shoppingmall.vo.Myshop_noticeVO;
import com.shoppingmall.vo.Myshop_reviewVO;

@Repository
public class Myshop_reviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.review";
	
	//����� ���� ó��
	public int insert(Myshop_reviewVO vo) {
		return sqlSession.insert(namespace+".insert", vo);
	}
	
	//������ - ���� ����Ʈ
	public ArrayList<Myshop_reviewVO> adminselectAll() {
		List<Myshop_reviewVO> list = sqlSession.selectList(namespace+".admin_selectAll");
		return (ArrayList<Myshop_reviewVO>) list;
	}
	
	//���� ����
	public int totalCount() {
		return sqlSession.selectOne(namespace+".totalcount");
	}
	
	//�󼼺���
	public Myshop_reviewVO select(String rid) {
		return sqlSession.selectOne(namespace+".content",rid);
	}
	
	//
	public int delete(String rid) {
		return sqlSession.delete(namespace+".delete",rid);
	}
}
