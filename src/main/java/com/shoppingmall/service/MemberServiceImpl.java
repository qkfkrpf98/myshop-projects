package com.shoppingmall.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_memberDAO;
import com.shoppingmall.dao.Naver_Sens_V2;
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
	
	/** 
	 * �������� ó�� ���� �߼�
	 */
	public String sendRandomMessage(String pnumber){
	    Naver_Sens_V2 message = new Naver_Sens_V2();
	    Random rand = new Random();
	    String numStr = "";
	    for (int i = 0; i < 6; i++) {
	        String ran = Integer.toString(rand.nextInt(10));
	        numStr += ran;
	    }
	    System.out.println("ȸ������ ���� ���� => " + numStr);

	    message.send_msg(pnumber, numStr);

	    return numStr;
	}
}
