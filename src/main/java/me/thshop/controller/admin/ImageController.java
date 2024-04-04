package me.thshop.controller.admin;

import java.io.IOException;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.thshop.constant.SystemConstant;
import me.thshop.entity.ImageEntity;
import me.thshop.entity.ProductEntity;
import me.thshop.service.IImageService;
import me.thshop.service.IProductService;
import me.thshop.utils.ImageUtil;
import me.thshop.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-image"})
public class ImageController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Inject
    private IImageService imageService;

    @Inject
    private IProductService productService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	String url = "";
	String type = request.getParameter("type");
	String imageId = request.getParameter("imageId");
	if (type.equals(SystemConstant.LIST)) {
	    request.setAttribute(SystemConstant.MODEL, imageService.findAll());
	    url = "views/admin/image/image.jsp";
	} else if (type.equals(SystemConstant.EDIT)) {
	    if (imageId != null) {
		request.setAttribute("IMAGE", imageService.findOne(Integer.parseInt(imageId)));
	    }
	    url = "views/admin/image/editImage.jsp";
	}
	MessageUtil.showMessage(request);
	request.setAttribute("PRODUCT", productService.findAll());
	RequestDispatcher rd = request.getRequestDispatcher(url);
	rd.forward(request, response);
    }

    // Add images
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
	ServletContext sc = this.getServletConfig().getServletContext();

	// �?ư�?ng dẫn lấy ảnh
	String realPath = sc.getRealPath("");
	// �?ư�?ng dẫn lấy ảnh

	HashMap<String, String> fields = ImageUtil.mageHandle(request, realPath);

	if (fields.get("imageId") == null || fields.get("imageId").equals("")) {
	    // Add
	    ImageEntity imageEntity = new ImageEntity();
	    imageEntity.setImageBig(request.getParameter("imageBig"));
	    imageEntity.setImageSmall(request.getParameter("imageSmall"));
	    imageService.save(imageEntity);
	    response.sendRedirect(request.getContextPath() + "/admin-image?type=edit&message=insert_success");
	} else {
	    // Update
	    ImageEntity imageEntity = imageService.findOne(Integer.parseInt(fields.get("imageId")));
	    
	    imageEntity.setImageSmall(request.getParameter("imageSmall"));
	    imageEntity.setImageBig(request.getParameter("imageBig"));

	    imageService.update(imageEntity);
	    ProductEntity productEntity = productService.findOne(Integer.parseInt(fields.get("productId")));
	    productEntity.setImageId(imageEntity);
	    productService.updateByImage(productEntity);
	    response.sendRedirect(request.getContextPath() + "/admin-image?type=edit&message=update_success");
	}

    }
}
