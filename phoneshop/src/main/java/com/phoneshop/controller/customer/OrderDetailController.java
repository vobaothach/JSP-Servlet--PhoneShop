package com.phoneshop.controller.customer;

import com.phoneshop.entity.OrderEntity;
import com.phoneshop.service.IOrderService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/order-detail"})
public class OrderDetailController extends HttpServlet {
    @Inject
    private IOrderService orderService;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        OrderEntity order = orderService.findById(id);
        request.setAttribute("order", order);
        request.getRequestDispatcher("/customer/order-detail/index.jsp").forward(request, response);
    }
}
