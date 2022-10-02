package com.shoppingmall.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.shoppingmall.vo.Myshop_noticeVO;

public class FileServiceImpl {
	/**
	 * 공지사항 : 파일 upload 폴더에 저장
	 */
	public void fileSave(Myshop_noticeVO vo, HttpServletRequest request) throws Exception {
		//2. upload 폴더에 nsfile 명으로 실제 파일 업로드 처리
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File file = new File(path+vo.getNsfile());
			vo.getFile1().transferTo(file);
		}
	}
	
	/**
	 * 공지사항 : 파일 체크 후 nfile, nsfile 생성
	 */
	public Myshop_noticeVO fileCheck(Myshop_noticeVO vo) {
		//1. vo객체의 파일체크 후 nfile, nsfile에 저장되는 이름 생성
		if(vo.getFile1().getOriginalFilename().equals("")) {
			vo.setNfile("");
			vo.setNsfile("");
		}else {
			UUID uuid = UUID.randomUUID();
			vo.setNfile(vo.getFile1().getOriginalFilename());
			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
		}
		
		return  vo;
	}//fileCheck
}
