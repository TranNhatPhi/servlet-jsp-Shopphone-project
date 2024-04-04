package me.thshop.dao;

import java.util.List;

import me.thshop.entity.CategoryEntity;

public interface ICategoryDAO {
	List<CategoryEntity> findAll();
	CategoryEntity findOne(Integer categoryId);
}
