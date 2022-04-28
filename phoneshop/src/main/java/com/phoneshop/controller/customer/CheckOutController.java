package com.phoneshop.controller.customer;

import com.phoneshop.service.IOrderService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/check-out", "/checkout"})
public class CheckOutController extends HttpServlet {
    @Inject
    private IOrderService orderService;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/customer/check-out/index.jsp").forward(request, response);
    }

    // Khi người dùng ấn Pay
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String description = request.getParameter("description");

        orderService.pay(email, address, description);

        response.sendRedirect("/payment-announce");
    }
}
