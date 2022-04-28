package com.phoneshop.controller;

import com.phoneshop.entity.ProductEntity;
import com.phoneshop.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
    @Inject
    private IProductService productService;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy trang hiện tại và số lượng sản phẩm sẽ hiển thị trên trang
    	Integer page = null;
        Integer limit = null;
        if (request.getParameter("page") == null ||
                request.getParameter("limit") == null) {
        	// Nếu ở trang chủ thì mặc định sẽ là trang 1 và có 10 sản phẩm
            page = 1;
            limit = 10;
        }
        else {
            page = Integer.parseInt(request.getParameter("page"));
            limit = Integer.parseInt(request.getParameter("limit"));
        }

        List<ProductEntity> products = productService.findAllWithPaging(page, limit);

        request.setAttribute("page", page);
        request.setAttribute("limit", limit);
        request.setAttribute("products", products);
        request.setAttribute("productSize", productService.count());

        request.getRequestDispatcher("/home/index.jsp").forward(request, response);
    }
}
