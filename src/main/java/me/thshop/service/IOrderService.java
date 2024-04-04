package me.thshop.service;

import java.util.List;

import me.thshop.dto.OrderDTO;
import me.thshop.entity.OrderEntity;

public interface IOrderService {
	OrderDTO save(OrderDTO orderDTO);
	List<OrderEntity> findByUser(Integer useId);
	List<OrderEntity> findAll();
	void update(OrderDTO orderDTO);
	void delete(Integer orderId);
	List<OrderEntity> findByStatus(Integer status);
	Long getEarning();
	Long orderSuccessNumber();
}
