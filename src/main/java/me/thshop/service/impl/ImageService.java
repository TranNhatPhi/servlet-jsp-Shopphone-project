package me.thshop.service.impl;

import java.util.List;

import javax.inject.Inject;

import me.thshop.dao.IImageDAO;
import me.thshop.entity.ImageEntity;
import me.thshop.service.IImageService;

public class ImageService implements IImageService{
	@Inject
	private IImageDAO imageDAO;
	
	@Override
	public List<ImageEntity> findAll() {
		return imageDAO.findAll();
	}

	@Override
	public ImageEntity findOne(Integer imageId) {
		return imageDAO.findOne(imageId);
	}

	@Override
	public Integer save(ImageEntity imageEntity) {
		return imageDAO.insert(imageEntity);
	}

	@Override
	public void update(ImageEntity imageEntity) {
		imageDAO.update(imageEntity);
	}

	@Override
	public void delete(Integer imageId) {
		imageDAO.delete(imageId);
	}

}
