package me.thshop.service.impl;

import java.util.List;

import javax.inject.Inject;

import me.thshop.dao.IOrderDAO;
import me.thshop.dao.IOrderDetailDAO;
import me.thshop.dao.IProductDAO;
import me.thshop.dto.CartDTO;
import me.thshop.dto.CartDetailDTO;
import me.thshop.dto.OrderDTO;
import me.thshop.entity.OrderDetailEntity;
import me.thshop.service.IOrderDetailService;

public class OrderDetailService implements IOrderDetailService{
	
	@Inject
	private IOrderDetailDAO orderDetailDAO;
	
	@Inject
	private IProductDAO productDAO;
	
	@Inject
	private IOrderDAO orderDAO;

	@Override
	public void save(CartDTO cart, OrderDTO orderDTO) {
		OrderDetailEntity detailEntity = new OrderDetailEntity();
		for(CartDetailDTO cartDetailDTO : cart.getCartDetails()) {
			detailEntity.setPrice(cartDetailDTO.getTotal());
			detailEntity.setQuantity(cartDetailDTO.getQuantity());
			detailEntity.setOrderId(orderDAO.findOne(orderDTO.getOrderId()));
			detailEntity.setProductId(productDAO.findOne(cartDetailDTO.getProduct().getProductId()));
			orderDetailDAO.insert(detailEntity);
		}
	}

	@Override
	public List<OrderDetailEntity> findAll() {
		return orderDetailDAO.findAll();
	}

	@Override
	public List<OrderDetailEntity> findByOrder(Integer orderId) {
		return orderDetailDAO.findByOrder(orderId);
	}

	@Override
	public void delete(Integer orderDetailId) {
		orderDetailDAO.delete(orderDetailId);
	}
	
}
