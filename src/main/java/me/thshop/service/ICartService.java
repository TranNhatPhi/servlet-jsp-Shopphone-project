package me.thshop.service;

import me.thshop.dto.CartDTO;
import me.thshop.dto.ProductDTO;

public interface ICartService {
	CartDTO addProductToCart(CartDTO cart, ProductDTO product, Integer quantity);
	void editQuantity(CartDTO cart, ProductDTO product, Integer quantity);
	void deleteFromCart(CartDTO cart, Integer productId);
}
