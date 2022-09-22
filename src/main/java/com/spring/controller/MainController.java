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
	
	//로그인 페이지 
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	//관리자 - Home페이지
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	//관리자 - 상품관리 페이지 
	@RequestMapping(value="/admin_product_list.do", method=RequestMethod.GET)
	public String admin_product_list() {
		return "/admin/admin_product_product_list";
	}
	//관리자 - 사용자관리/메세지 페이지
	@RequestMapping(value="/admin_message.do", method=RequestMethod.GET)
	public String admin_message() {
		return "/admin/admin_message";
	}
	//관리자 - 주문관리/주문내역 페이지
	@RequestMapping(value="/admin_order_management.do", method=RequestMethod.GET)
	public String admin_order_management() {
		return "/admin/admin_order_management";
	}
	//관리자 - 주문관리/주문취소 페이지
	@RequestMapping(value="/admin_order_cancel_management.do", method=RequestMethod.GET)
	public String admin_order_cancel_management() {
		return "/admin/admin_order_cancel_management";
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
	
	//리뷰 리스트
	@RequestMapping(value="/admin_ReviewList.do", method=RequestMethod.GET)
	public String admin_ReviewList() {
		return "/admin/admin_ReviewList";
	}
}
