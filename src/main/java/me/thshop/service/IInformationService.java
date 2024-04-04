package me.thshop.service;

import me.thshop.dto.InformationDTO;
import me.thshop.dto.ProductDetailDTO;

public interface IInformationService {
	InformationDTO findOne(Integer infId);
	void update(ProductDetailDTO productDetailDTO);
	Integer save(ProductDetailDTO productDetailDTO);
}
