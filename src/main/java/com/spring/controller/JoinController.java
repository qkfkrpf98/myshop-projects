package com.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingmall.service.MemberServiceImpl;
import com.shoppingmall.vo.Myshop_memberVO;

@Controller
public class JoinController {
		@Autowired
		private MemberServiceImpl memberService;
	
		//회원가입
		@RequestMapping(value="/join.do", method=RequestMethod.GET)
		public String join() {
			return "/join";
		}
		
		
		/**
		 * joinCheck.do : 회원가입 처리
		 */
		@RequestMapping(value="/joinCheck.do", method=RequestMethod.POST)
		public ModelAndView joinCheck(Myshop_memberVO vo) {
			ModelAndView mv = new ModelAndView();
			/* System.out.println(vo.getId()); */
			int result = memberService.getJoinResult(vo);
			
			if(result == 1){
				mv.addObject("join_result","ok");
				mv.setViewName("/login");
			}else{
				mv.setViewName("error_page");
			}
			
			return mv;
		}
		
		/**
		 * idCheck.do : 아이디 중복처리 - ajax
		 */
		@ResponseBody
		@RequestMapping(value="/id_check.do", method=RequestMethod.GET)
		public String idCheck(String id) {
			int result = memberService.getIdCheck(id);
			return String.valueOf(result);
		}
		
		
}
