package me.thshop.service;

import java.util.List;

import me.thshop.dto.ProductDetailDTO;
import me.thshop.entity.ProductEntity;

public interface IProductService {
	List<ProductEntity> findAll();
	ProductEntity findOne(Integer productId);
	List<ProductEntity> findByBrand(Integer brandId);
	void update(ProductDetailDTO productDetailDTO);
	Integer save(ProductDetailDTO productDetailDTO);
	void delete(Integer productId);
	void updateByImage(ProductEntity productEntity);
	List<ProductEntity> search(String keyWord);
	List<ProductEntity> findByCategory(Integer categoryId);
	List<ProductEntity> findProductOutstanding();
	Long productNumber();
}
