package me.thshop.service;

import java.util.List;

import me.thshop.dto.CartDTO;
import me.thshop.dto.OrderDTO;
import me.thshop.entity.OrderDetailEntity;

public interface IOrderDetailService {
	void save(CartDTO cart, OrderDTO orderDTO);
	List<OrderDetailEntity> findAll();
	List<OrderDetailEntity> findByOrder(Integer orderId);
	void delete(Integer orderDetailId);
}
