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
	
	
	/**
	 * 공지사항 : 새로운 파일이 있는 경우 update시 파일체크
	 */
	public Myshop_noticeVO update_fileCheck(Myshop_noticeVO vo) {
		if(vo.getFile1() != null) {	//새로운 파일객체가 있는지 여부체크 하는 경우에는 null을 사용
			if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
				
				UUID uuid = UUID.randomUUID();
				
				vo.setNfile(vo.getFile1().getOriginalFilename());
				vo.setNsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
			}
		}
		return vo;
	}
	
	/**
	 * 게시판 : 파일이 있는 경우 update시 파일저장
	 */
	public void update_filesave(Myshop_noticeVO vo, HttpServletRequest request, String old_filename) 
														throws Exception {
		//새로운 파일을 upload 폴더에 저장
		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getNsfile());
			vo.getFile1().transferTo(file);
		
			//기존파일이 있는 경우에는 파일 삭제
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}
	}
}
