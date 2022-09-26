package com.shoppingmall.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_memberDAO;
import com.shoppingmall.vo.Myshop_memberVO;

public class MemberServiceImpl implements MemberService{
	@Autowired
	private Myshop_memberDAO memberDao;
	
	/** 
	 * ȸ������ ó��
	 */
	public int getJoinResult(Myshop_memberVO vo) {
			
		return 	memberDao.insert(vo);
	}
}
