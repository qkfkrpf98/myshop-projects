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
	
	//admin - 전체 공지사항 리스트
	public ArrayList<Myshop_noticeVO> getList(){
		return noticeDao.selectAll();
	}
	
	//admin - 조건 검색 리스트
	public ArrayList<Myshop_noticeVO>getAdminSearchList(String text, String searchtype, String nsdate, String nedate){
		return noticeDao.search_select(text, searchtype, nsdate, nedate);
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
	
	//사용자 - 전체 공지사항 리스트
	public ArrayList<Myshop_noticeVO> getList(int startCount, int endCount){
		return noticeDao.user_selectAll(startCount,endCount);
	}
	
	//사용자 - 검색 공지사항 리스트
	public ArrayList<Myshop_noticeVO> getSearchList(String text, String searchtype, int startCount, int endCount){
		return noticeDao.search_select(text, searchtype, startCount,endCount);
	}
	
	
}
