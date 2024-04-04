package me.thshop.service.impl;

import java.util.List;

import javax.inject.Inject;

import me.thshop.dao.ICategoryDAO;
import me.thshop.entity.CategoryEntity;
import me.thshop.service.ICategoryService;

public class CategoryService implements ICategoryService{

	@Inject
	private ICategoryDAO categoryDAO;
	@Override
	public List<CategoryEntity> findAll() {
		return categoryDAO.findAll();
	}

}
