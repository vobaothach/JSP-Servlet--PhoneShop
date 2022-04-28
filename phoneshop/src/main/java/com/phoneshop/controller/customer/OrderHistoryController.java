package com.phoneshop.controller.customer;

import com.phoneshop.entity.AccountEntity;
import com.phoneshop.entity.OrderEntity;
import com.phoneshop.service.IOrderService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/order-history"})
public class OrderHistoryController extends HttpServlet {
    @Inject
    private IOrderService orderService;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AccountEntity accountSession = (AccountEntity) request.getSession().getAttribute("ACCOUNT_SESSION");
        if (accountSession == null) {
            String message = "You need to log in to do this action";
            response.sendRedirect("/login?message=" + message);
            return;
        }

        List<OrderEntity> orders = orderService.findPaymentByAccountEmail(accountSession.getEmail());
        request.setAttribute("orders", orders);
        request.getRequestDispatcher("/customer/order-history/index.jsp").forward(request, response);
    }
}
