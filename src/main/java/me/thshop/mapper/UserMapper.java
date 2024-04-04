package me.thshop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import me.thshop.entity.RoleEntity;
import me.thshop.entity.UserEntity;

public class UserMapper implements RowMapper<UserEntity>{

	@Override
	public UserEntity mapRow(ResultSet rs) {
		UserEntity user = new UserEntity();
		try {
			user.setUserId(rs.getInt("userId"));
			user.setPassword(rs.getString("password"));
			user.setFullName(rs.getString("fullName"));
			user.setEmail(rs.getString("email"));
			user.setPhone(rs.getString("phone"));
			user.setAddress(rs.getString("address"));
			try {
				RoleEntity role = new RoleEntity();
				role.setRoleName(rs.getString("roleName"));
				user.setRole(role);
			}catch(Exception e) {
				System.out.print(e);
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}	
	}

}
