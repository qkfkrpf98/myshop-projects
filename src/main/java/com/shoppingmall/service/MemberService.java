package com.shoppingmall.service;

import com.shoppingmall.vo.Myshop_memberVO;
import com.shoppingmall.vo.SessionVO;

public interface MemberService {
	int getJoinResult(Myshop_memberVO vo);
	int getIdCheck(String id);
	SessionVO getLoginResult(Myshop_memberVO vo);
}
