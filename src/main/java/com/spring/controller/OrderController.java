package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.service.OrderServiceImpl;
import com.shoppingmall.vo.Myshop_ordersVO;

@Controller
public class OrderController {
	@Autowired
	private OrderServiceImpl orderService;
	
	
		//주문 리스트 페이지
		@RequestMapping(value="/order_list.do", method=RequestMethod.GET)
		public ModelAndView order_list() {
			ModelAndView mv = new ModelAndView();
			
			Myshop_ordersVO vo = orderService.getInfo();
			System.out.println(vo.getOid());

			mv.addObject("vo",vo);
			mv.setViewName("/order_list");
			
			return mv;
		}
		
}
