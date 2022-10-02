package com.shoppingmall.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.shoppingmall.vo.Myshop_noticeVO;

public class FileServiceImpl {
	/**
	 * �������� : ���� upload ������ ����
	 */
	public void fileSave(Myshop_noticeVO vo, HttpServletRequest request) throws Exception {
		//2. upload ������ nsfile ������ ���� ���� ���ε� ó��
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File file = new File(path+vo.getNsfile());
			vo.getFile1().transferTo(file);
		}
	}
	
	/**
	 * �������� : ���� üũ �� nfile, nsfile ����
	 */
	public Myshop_noticeVO fileCheck(Myshop_noticeVO vo) {
		//1. vo��ü�� ����üũ �� nfile, nsfile�� ����Ǵ� �̸� ����
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
