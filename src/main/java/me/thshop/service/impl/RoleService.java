package me.thshop.service.impl;

import java.util.List;

import javax.inject.Inject;

import me.thshop.dao.IRoleDAO;
import me.thshop.entity.RoleEntity;
import me.thshop.service.IRoleService;

public class RoleService implements IRoleService{
	@Inject
	private IRoleDAO roleDAO;
	
	@Override
	public List<RoleEntity> findAll() {
		return roleDAO.findAll();
	}

	@Override
	public RoleEntity findOne(Integer roleId) {
		return roleDAO.findOne(roleId);
	}

}
