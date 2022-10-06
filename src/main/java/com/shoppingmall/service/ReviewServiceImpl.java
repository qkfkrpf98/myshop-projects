package com.shoppingmall.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_reviewDAO;
import com.shoppingmall.vo.Myshop_reviewVO;

public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private Myshop_reviewDAO  reviewDao;
	
	public int getWriteResult(Myshop_reviewVO vo) {
		return reviewDao.insert(vo);
	}
}
