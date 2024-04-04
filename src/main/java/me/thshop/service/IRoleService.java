package me.thshop.service;

import java.util.List;

import me.thshop.entity.RoleEntity;

public interface IRoleService {
	List<RoleEntity> findAll();
	RoleEntity findOne(Integer roleId);
}
