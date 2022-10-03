package com.shoppingmall.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_noticeDAO;
import com.shoppingmall.vo.Myshop_noticeVO;

public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private Myshop_noticeDAO noticeDao;
	
	//공지사항 쓰기
	public int getWriteResult(Myshop_noticeVO vo) {
		return noticeDao.insert(vo);
	}
	
	//전체 공지사항 리스트
	public ArrayList<Myshop_noticeVO> getList(){
		return noticeDao.selectAll();
	}
	
	//전체 공지사항 개수
	public int getTotalCount() {
		return noticeDao.totalCount();
	}
	
	//공지사항 삭제
	public int getDelete(String nid) {
		return noticeDao.delete(nid);
	}
	
	//공지사항 정보 가져오기
	public Myshop_noticeVO getContent(String nid) {
		return noticeDao.select(nid);
	}
	
	//공지사항 정보 가져오기
	public int getUpdate(Myshop_noticeVO vo) {
		return noticeDao.update(vo);
	}
}
