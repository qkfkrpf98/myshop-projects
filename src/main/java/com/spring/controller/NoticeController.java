package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.service.FileServiceImpl;
import com.shoppingmall.service.ReviewService;
import com.shoppingmall.vo.Myshop_reviewVO;
@Controller
public class NoticeController {
	@Autowired
	private FileServiceImpl  fileService;
	
	@Autowired
	private ReviewService  reviewService;
	
	//府轰 累己 -test
	@RequestMapping(value="/review_write.do", method=RequestMethod.GET)
	public String review_write() {
		return "/review_write";
	}
	//府轰其捞瘤
	@RequestMapping(value="/review.do", method=RequestMethod.GET)
	public String review() {
		return "/review";
	}
	//府轰 累己 -test
	@RequestMapping(value="/review_write_check.do", method=RequestMethod.POST)
	public ModelAndView review_write_check(Myshop_reviewVO vo, HttpServletRequest request) 
												throws Exception{
		ModelAndView mv = new ModelAndView();
		
		System.out.println(vo.getPid());
		System.out.println(vo.getPname());
		System.out.println(vo.getPcategory_id());
		System.out.println(vo.getId());
		System.out.println(vo.getScore());
		System.out.println(vo.getRcontent());
		
		vo = fileService.fileCheck(vo);
		int result = reviewService.getWriteResult(vo);
		
		if(result == 1){			
			fileService.fileSave(vo, request);
			mv.setViewName("redirect:/order_list.do");
		}else{

			mv.setViewName("error_page");
		}		
		
		return mv;
	}	
}
