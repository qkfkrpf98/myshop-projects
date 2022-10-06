package com.shoppingmall.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoppingmall.dao.Myshop_orderDAO;
import com.shoppingmall.vo.Myshop_ordersVO;

public class OrderServiceImpl implements OrderService{
	@Autowired
	private Myshop_orderDAO  orderDao;
	
	public Myshop_ordersVO getInfo() {
		return orderDao.select_info();
	}
}
