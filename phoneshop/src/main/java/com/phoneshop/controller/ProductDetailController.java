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

@WebServlet(urlPatterns = {"/product-detail"})
public class ProductDetailController extends HttpServlet {
    @Inject
    private IProductService productService;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = null;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (Exception ex) {
            response.sendRedirect("/home");
            return;
        }

        // Lấy sản phẩm lên theo id, id này được truyền lên ở phần url của request
        ProductEntity product = productService.findById(id); 
        request.setAttribute("product", product);

        request.getRequestDispatcher("/product-detail/index.jsp").forward(request, response);
    }
}
