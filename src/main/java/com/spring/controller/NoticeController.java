package com.spring.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.service.FileServiceImpl;
import com.shoppingmall.service.NoticeServiceImpl;
import com.shoppingmall.service.OrderServiceImpl;
import com.shoppingmall.service.PageServiceImpl;
import com.shoppingmall.service.ReviewServiceImpl;
import com.shoppingmall.vo.Myshop_noticeVO;
import com.shoppingmall.vo.Myshop_ordersVO;
import com.shoppingmall.vo.Myshop_reviewVO;
@Controller
public class NoticeController {
	@Autowired
	private FileServiceImpl  fileService;
	
	@Autowired
	private ReviewServiceImpl  reviewService;
	
	@Autowired
	private NoticeServiceImpl  noticeService;
	
	@Autowired
	private PageServiceImpl  pageService;
	
	@Autowired
	private OrderServiceImpl orderService;
	
	//리뷰 작성 페이지-test
	@ResponseBody
	@RequestMapping(value="/review_write.do", method=RequestMethod.GET)
	public Myshop_ordersVO review_write(String oid) {
		Myshop_ordersVO vo = orderService.getInfo(oid);
		
		return vo;
	}
	//리뷰페이지
	@RequestMapping(value="/review_test.do", method=RequestMethod.GET)
	public ModelAndView review_test(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Integer> param = pageService.getPageResult(rpage, "review", reviewService);
		ArrayList<Myshop_reviewVO> list = reviewService.getList(param.get("startCount"),param.get("endCount"));
		
		mv.addObject("list",list);
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("rpage", param.get("rpage"));
		mv.addObject("pageSize", param.get("pageSize"));
		mv.setViewName("/review_test");
		return mv;
	}
	//리뷰 작성 -test
	@RequestMapping(value="/review_write_check.do", method=RequestMethod.POST)
	public ModelAndView review_write_check(Myshop_reviewVO vo, HttpServletRequest request) 
												throws Exception{
		ModelAndView mv = new ModelAndView();
		
		System.out.println(vo.getPid());
		System.out.println(vo.getRwriter());
		System.out.println(vo.getScore());
		System.out.println(vo.getRcontent());
		
		vo = fileService.fileCheck(vo);
		int result = reviewService.getWriteResult(vo);
		
		if(result == 1){			
			fileService.fileSave(vo, request);
			mv.setViewName("redirect:/mypage_order.do");
		}else{

			mv.setViewName("error_page");
		}		
		
		return mv;
	}
	
	//공지사항 페이지
		@RequestMapping(value="/notice_board.do", method=RequestMethod.GET)
		public ModelAndView notice_board(String rpage) {
			ModelAndView mv = new ModelAndView();
			
			Map<String, Integer> param = pageService.getPageResult(rpage, "notice", noticeService);
			ArrayList<Myshop_noticeVO> list = noticeService.getList(param.get("startCount"),param.get("endCount"));
			
			mv.addObject("list",list);
			mv.addObject("dbCount", param.get("dbCount"));
			mv.addObject("rpage", param.get("rpage"));
			mv.addObject("pageSize", param.get("pageSize"));
			mv.setViewName("notice_board");
			return mv;
		}
		
		//공지사항 페이지 - 검색
		@RequestMapping(value="/notice_search_check.do", method=RequestMethod.POST)
		public ModelAndView notice_search_check(String text, String searchtype, String rpage) {
			ModelAndView mv = new ModelAndView();
			System.out.println(text);
			System.out.println(searchtype);
			
			Map<String, Integer> param = pageService.getPageResult(rpage, "notice", noticeService);
			ArrayList<Myshop_noticeVO> list=noticeService.getSearchList(text,searchtype,param.get("startCount"),param.get("endCount")); 
			mv.addObject("list",list);
			mv.addObject("dbCount", param.get("dbCount"));
			mv.addObject("rpage", param.get("rpage"));
			mv.addObject("pageSize", param.get("pageSize"));
			mv.setViewName("notice_board");
			return mv;
		}
}
