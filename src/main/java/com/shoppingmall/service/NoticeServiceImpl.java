package com.shoppingmall.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_noticeDAO;
import com.shoppingmall.vo.Myshop_noticeVO;

public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private Myshop_noticeDAO noticeDao;
	
	//�������� ����
	public int getWriteResult(Myshop_noticeVO vo) {
		return noticeDao.insert(vo);
	}
	
	//��ü �������� ����Ʈ
	public ArrayList<Myshop_noticeVO> getList(){
		return noticeDao.selectAll();
	}
	
	//��ü �������� ����
	public int getTotalCount() {
		return noticeDao.totalCount();
	}
	
	//�������� ����
	public int getDelete(String nid) {
		return noticeDao.delete(nid);
	}
	
	//�������� ���� ��������
	public Myshop_noticeVO getContent(String nid) {
		return noticeDao.select(nid);
	}
	
	//�������� ���� ��������
	public int getUpdate(Myshop_noticeVO vo) {
		return noticeDao.update(vo);
	}
}
