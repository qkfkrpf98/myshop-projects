package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	//ȸ�� - ���� ��� 
	@RequestMapping(value="/header.do", method=RequestMethod.GET)
	public String header() {
		return "header";
	}
	//���� ������
	@RequestMapping(value="/myshop.do", method=RequestMethod.GET)
	public String myshop() {
		return "myshop";
	}
	
	
	//��ǰ������
	@RequestMapping(value="/product_list.do", method=RequestMethod.GET)
	public String product_list() {
		return "/product/product_list";
	}
	//��ǰ�� ������
	@RequestMapping(value="/product_detail.do", method=RequestMethod.GET)
	public String product_detail() {
		return "/product/product_detail";
	}
	
	//����� ���� �ȳ� ������
	@RequestMapping(value="/membership_benefit.do", method=RequestMethod.GET)
	public String membership_benefit() {
		return "membership_benefit";
	}
	
	//�������� ������
	@RequestMapping(value="/notice_board.do", method=RequestMethod.GET)
	public String notice_board() {
		return "notice_board";
	}
	
	//����ȭ�� �׽�Ʈ
	@RequestMapping(value="/indextest.do", method=RequestMethod.GET)
	public String indextest() {
		return "/indextest";
	}
	

}
