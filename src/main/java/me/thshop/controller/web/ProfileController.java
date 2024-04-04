package me.thshop.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.thshop.entity.UserEntity;
import me.thshop.service.IOrderDetailService;
import me.thshop.service.IOrderService;
import me.thshop.utils.SesstionUtil;

@WebServlet(urlPatterns = { "/profile"})
public class ProfileController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Inject
	private IOrderService orderService;  
	
	@Inject
	private IOrderDetailService orderDetailService;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		UserEntity user = (UserEntity) SesstionUtil.getInstance().getValue(request, "USERMODEL");
		
		request.setAttribute("listOrderDetail", orderDetailService.findAll());
		if(user != null) {
			request.setAttribute("listOrder", orderService.findByUser(user.getUserId()));
			RequestDispatcher rd = request.getRequestDispatcher("views/web/profile.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
			rd.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
