package com.shoppingmall.service;

import java.util.ArrayList;

import com.shoppingmall.vo.Myshop_noticeVO;

public interface NoticeService {
	int getWriteResult(Myshop_noticeVO vo);
	ArrayList<Myshop_noticeVO> getList();
	int getTotalCount();
	int getDelete(String nid);
	Myshop_noticeVO getContent(String nid);
	int getUpdate(Myshop_noticeVO vo);
	ArrayList<Myshop_noticeVO> getList(int startCount, int endCount);
	ArrayList<Myshop_noticeVO> getSearchList(String text, String searchtype, int startCount, int endCount);
	ArrayList<Myshop_noticeVO> getAdminSearchList(String text, String searchtype, String nsdate, String nedate);
}
