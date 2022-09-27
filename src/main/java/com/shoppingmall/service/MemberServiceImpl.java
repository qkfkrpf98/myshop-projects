package com.shoppingmall.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_memberDAO;
import com.shoppingmall.vo.Myshop_memberVO;

public class MemberServiceImpl implements MemberService{
	@Autowired
	private Myshop_memberDAO memberDao;
	
	/** 
	 * 회원가입 처리
	 */
	public int getJoinResult(Myshop_memberVO vo) {
			
		return 	memberDao.insert(vo);
	}
	
	/** 
	 * 아이디 중복 확인 처리(ajax)
	 */
	public int getIdCheck(String id) {
		return memberDao.idcheck(id);
	}
}
