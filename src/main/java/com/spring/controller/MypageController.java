package com.spring.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myshop.vo.MyshopOrderVO;
import com.spring.service.OrderServiceImpl;

@Controller
public class MypageController {
	@Autowired
	private OrderServiceImpl orderService;
	
		//���������� - �ֹ�����
		@RequestMapping(value="/mypage_order.do", method=RequestMethod.GET)
		public ModelAndView mypage_order(String id) {
			ModelAndView mv = new ModelAndView();
			/* String id = "admin"; */
			System.out.println(id);
			ArrayList<MyshopOrderVO> list = orderService.getList(id);			
			
			mv.addObject("list",list);
			mv.setViewName("/mypage_order");
			
			return mv;
		}
		
		//���������� - �ֹ����� - �ֹ� ��ҿ�û �� �ֹ� ���º���
		@ResponseBody
		@RequestMapping(value="/order_cancel_update.do", method=RequestMethod.GET)
		public int order_cancel_update(int oid) {
			int result = 0;
			
			result = orderService.updateStatus(oid);
			
			return result;
		}
		
		
		
		
}
