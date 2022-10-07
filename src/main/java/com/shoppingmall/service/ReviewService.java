package com.shoppingmall.service;

import java.util.ArrayList;

import com.shoppingmall.vo.Myshop_reviewVO;

public interface ReviewService {
	int getWriteResult(Myshop_reviewVO vo);
	ArrayList<Myshop_reviewVO> getList();
	int getTotalCount();
	int getDelete(String rid);
	Myshop_reviewVO getContent(String rid);
}
