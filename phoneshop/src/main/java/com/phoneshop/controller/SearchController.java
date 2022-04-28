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

@WebServlet(urlPatterns = {"/search"})
public class SearchController extends HttpServlet {
    @Inject
    private IProductService productService;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");

        List<ProductEntity> products = productService.findAllByKeyword(keyword);
        request.setAttribute("keyword", keyword);
        request.setAttribute("products", products);

        request.getRequestDispatcher("/search/index.jsp").forward(request, response);
    }
}
