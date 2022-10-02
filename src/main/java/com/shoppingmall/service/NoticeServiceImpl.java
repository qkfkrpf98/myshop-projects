package com.shoppingmall.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_noticeDAO;
import com.shoppingmall.vo.Myshop_noticeVO;

public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private Myshop_noticeDAO noticeDao;
	
	public int getWriteResult(Myshop_noticeVO vo) {
		return noticeDao.insert(vo);
	}
}
