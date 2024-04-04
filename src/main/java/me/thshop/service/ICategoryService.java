package me.thshop.service;

import java.util.List;

import me.thshop.entity.CategoryEntity;

public interface ICategoryService {
	List<CategoryEntity> findAll();
}
