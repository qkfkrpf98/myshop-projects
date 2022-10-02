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
		
		//관리자 - 리뷰 리스트
		@RequestMapping(value="/admin_ReviewList.do", method=RequestMethod.GET)
		public String admin_ReviewList() {
			return "/admin/admin_ReviewList";
		}
		//관리자 - 공지사항 리스트
		@RequestMapping(value="/admin_notice_list.do", method=RequestMethod.GET)
		public String admin_notice_list() {
			return "/admin/admin_notice_list";
		}
		//관리자 - 공지사항 글쓰기
		@RequestMapping(value="/admin_notice_write.do", method=RequestMethod.GET)
		public String admin_notice_write() {
			return "/admin/admin_notice_write";
		}
		//관리자 - 공지사항 글쓰기 처리
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
		
		//관리자 - q&a 리스트
		@RequestMapping(value="/admin_qna_list.do", method=RequestMethod.GET)
		public String admin_qna_list() {
			return "/admin/admin_qna_list";
		}
		
		
		//관리자 - Home페이지
		@RequestMapping(value="/admin.do", method=RequestMethod.GET)
		public String admin() {
			return "/admin/admin";
		}
		//관리자 - 상품관리 페이지 
		@RequestMapping(value="/admin_product_list.do", method=RequestMethod.GET)
		public String admin_product_list() {
			return "/admin/admin_product_list";
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
		
		
}
