package com.shoppingmall.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_reviewDAO;
import com.shoppingmall.vo.Myshop_reviewVO;

public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private Myshop_reviewDAO  reviewDao;
	
	public int getWriteResult(Myshop_reviewVO vo) {
		return reviewDao.insert(vo);
	}
	
	public ArrayList<Myshop_reviewVO> getList() {
		return reviewDao.adminselectAll();
	}
	
	public int getTotalCount() {
		return reviewDao.totalCount();
	}
	
	public int getDelete(String rid) {
		return reviewDao.delete(rid);
	}
	
	public Myshop_reviewVO getContent(String rid) {
		return reviewDao.select(rid);
	}
}
