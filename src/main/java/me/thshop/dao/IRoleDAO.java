package me.thshop.dao;

import java.util.List;

import me.thshop.entity.RoleEntity;

public interface IRoleDAO {
	List<RoleEntity> findAll();
	RoleEntity findOne(Integer roleId);
}
