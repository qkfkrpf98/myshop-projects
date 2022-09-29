package com.shoppingmall.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_memberDAO;
import com.shoppingmall.vo.Myshop_memberVO;
import com.shoppingmall.vo.SessionVO;

public class MemberServiceImpl implements MemberService{
	@Autowired
	private Myshop_memberDAO memberDao;
	
	/** 
	 * ȸ������ ó��
	 */
	public int getJoinResult(Myshop_memberVO vo) {
			
		return 	memberDao.insert(vo);
	}
	
	/** 
	 * ���̵� �ߺ� Ȯ�� ó��(ajax)
	 */
	public int getIdCheck(String id) {
		return memberDao.idcheck(id);
	}
	
	/** 
	 * �α��� ó��
	 */
	public SessionVO getLoginResult(Myshop_memberVO vo) {
		return memberDao.select(vo);
	}
}