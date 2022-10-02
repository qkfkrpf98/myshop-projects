package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.service.FileServiceImpl;
import com.shoppingmall.service.NoticeServiceImpl;
import com.shoppingmall.vo.Myshop_noticeVO;
@Controller
public class AdminController {
	
		@Autowired
		private FileServiceImpl  fileService;
		
		@Autowired
		private NoticeServiceImpl  noticeService;
		
		//������ - ���� ����Ʈ
		@RequestMapping(value="/admin_ReviewList.do", method=RequestMethod.GET)
		public String admin_ReviewList() {
			return "/admin/admin_ReviewList";
		}
		//������ - �������� ����Ʈ
		@RequestMapping(value="/admin_notice_list.do", method=RequestMethod.GET)
		public String admin_notice_list() {
			return "/admin/admin_notice_list";
		}
		//������ - �������� �۾���
		@RequestMapping(value="/admin_notice_write.do", method=RequestMethod.GET)
		public String admin_notice_write() {
			return "/admin/admin_notice_write";
		}
		//������ - �������� �۾��� ó��
		@RequestMapping(value="/admin_notice_write_check.do", method=RequestMethod.POST)
		public ModelAndView admin_notice_write_check(Myshop_noticeVO vo, HttpServletRequest request)
			throws Exception{
			ModelAndView mv = new ModelAndView();
			System.out.println(vo.getNtitle());
			System.out.println(vo.getNcontent());
			System.out.println(vo.getNcrucial());
			System.out.println(vo.getNsdate());
			System.out.println(vo.getNedate());
			
			vo = fileService.fileCheck(vo);
			int result = noticeService.getWriteResult(vo);
			
			if(result == 1){			
				fileService.fileSave(vo, request);
				mv.setViewName("redirect:/admin_notice_list.do");
			}else{

				mv.setViewName("error_page");
			}		
			
			return mv;

		}
		
		//������ - q&a ����Ʈ
		@RequestMapping(value="/admin_qna_list.do", method=RequestMethod.GET)
		public String admin_qna_list() {
			return "/admin/admin_qna_list";
		}
		
		
		//������ - Home������
		@RequestMapping(value="/admin.do", method=RequestMethod.GET)
		public String admin() {
			return "/admin/admin";
		}
		//������ - ��ǰ���� ������ 
		@RequestMapping(value="/admin_product_list.do", method=RequestMethod.GET)
		public String admin_product_list() {
			return "/admin/admin_product_list";
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
		
		
}
