package me.thshop.controller.web.api;

import java.io.IOException;
import java.util.List;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import me.thshop.dto.UserDTO;
import me.thshop.entity.UserEntity;
import me.thshop.service.IUserService;
import me.thshop.utils.HttpUtil;
import me.thshop.utils.SesstionUtil;

@WebServlet(urlPatterns = {"/api-user"})
public class UserAPI extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Inject
	private IUserService userService;
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ObjectMapper mapper = new ObjectMapper();
		UserDTO userDTO = HttpUtil.of(request.getReader()).toModel(UserDTO.class);
		List<UserEntity> user = userService.findByEmail(userDTO.getEmail());
		if(!user.isEmpty()) {
			mapper.writeValue(response.getOutputStream(), "emailExisted");	
		}else {
			SesstionUtil.getInstance().putValue(request, "userNeedVerify", userDTO);
			mapper.writeValue(response.getOutputStream(), "thanhCong");		
		}
	}
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ObjectMapper mapper = new ObjectMapper();
		UserDTO userModel = HttpUtil.of(request.getReader()).toModel(UserDTO.class);
		userService.update(userModel);
		SesstionUtil.getInstance().putValue(request, "USERMODEL", userService.findOne(userModel.getUserId()));
		mapper.writeValue(response.getOutputStream(), "Thanh cong");
	}
}
