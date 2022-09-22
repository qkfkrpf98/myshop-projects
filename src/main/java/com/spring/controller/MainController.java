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
	
	//�α��� ������ 
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	//������ - Home������
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	//������ - ��ǰ���� ������ 
	@RequestMapping(value="/admin_product_list.do", method=RequestMethod.GET)
	public String admin_product_list() {
		return "/admin/admin_product_product_list";
	}
	//������ - ����ڰ���/�޼��� ������
	@RequestMapping(value="/admin_message.do", method=RequestMethod.GET)
	public String admin_message() {
		return "/admin/admin_message";
	}
	//������ - �ֹ�����/�ֹ����� ������
	@RequestMapping(value="/admin_order_management.do", method=RequestMethod.GET)
	public String admin_order_management() {
		return "/admin/admin_order_management";
	}
	//������ - �ֹ�����/�ֹ���� ������
	@RequestMapping(value="/admin_order_cancel_management.do", method=RequestMethod.GET)
	public String admin_order_cancel_management() {
		return "/admin/admin_order_cancel_management";
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
	
	//���� ����Ʈ
	@RequestMapping(value="/admin_ReviewList.do", method=RequestMethod.GET)
	public String admin_ReviewList() {
		return "/admin/admin_ReviewList";
	}
}
