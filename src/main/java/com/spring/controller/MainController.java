package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	//회원 - 공통 헤더 
	@RequestMapping(value="/header.do", method=RequestMethod.GET)
	public String header() {
		return "header";
	}
	//메인 페이지
	@RequestMapping(value="/myshop.do", method=RequestMethod.GET)
	public String myshop() {
		return "myshop";
	}
	
	
	//상품페이지
	@RequestMapping(value="/product_list.do", method=RequestMethod.GET)
	public String product_list() {
		return "/product/product_list";
	}
	//상품상세 페이지
	@RequestMapping(value="/product_detail.do", method=RequestMethod.GET)
	public String product_detail() {
		return "/product/product_detail";
	}
	
	//멤버십 혜택 안내 페이지
	@RequestMapping(value="/membership_benefit.do", method=RequestMethod.GET)
	public String membership_benefit() {
		return "membership_benefit";
	}
	
	//공지사항 페이지
	@RequestMapping(value="/notice_board.do", method=RequestMethod.GET)
	public String notice_board() {
		return "notice_board";
	}
	
	//메인화면 테스트
	@RequestMapping(value="/indextest.do", method=RequestMethod.GET)
	public String indextest() {
		return "/indextest";
	}
	

}
