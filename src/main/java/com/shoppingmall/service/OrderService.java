package com.shoppingmall.service;

import java.util.ArrayList;

import com.shoppingmall.vo.Myshop_ordersVO;

public interface OrderService {
	Myshop_ordersVO getInfo(String oid);
	ArrayList<Myshop_ordersVO> getList(String id);
}
