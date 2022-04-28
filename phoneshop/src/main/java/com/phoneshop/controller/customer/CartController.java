package com.phoneshop.controller.customer;

import com.phoneshop.entity.AccountEntity;
import com.phoneshop.entity.OrderEntity;
import com.phoneshop.service.IOrderItemService;
import com.phoneshop.service.IOrderService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/cart"})
public class CartController extends HttpServlet {
    @Inject
    private IOrderService orderService;

    @Inject
    private IOrderItemService orderItemService;

    // Xem giỏ hàng 
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AccountEntity accountSession = (AccountEntity) request.getSession().getAttribute("ACCOUNT_SESSION");
        // Yêu cầu người dùng đăng nhập nếu chưa đăng nhập 
        if (accountSession == null) {
            String message = "You need to log in to do this action";
            response.sendRedirect("/login?message=" + message);
            return;
        }

        OrderEntity order = orderService.findCartByAccountEmail(accountSession.getEmail());
        request.setAttribute("order", order);
        request.getRequestDispatcher("/customer/cart/index.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        AccountEntity accountSession = (AccountEntity) request.getSession().getAttribute("ACCOUNT_SESSION");
        if (accountSession == null) {
            String message = "You need to log in to do this action";
            response.sendRedirect("/login?message=" + message);
            return;
        }

        String action = request.getParameter("action");
        if (action == null)
            return;

        String i_orderItemIds = request.getParameter("orderItemIds");
        String i_quantities = request.getParameter("quantities");
        String[] orderItemIds = i_orderItemIds.split(",");
        String[] quantities = i_quantities.split(",");
        orderItemService.updateCart(orderItemIds, quantities);
        orderService.countCartTotalByEmail(accountSession.getEmail());

        response.sendRedirect("/check-out");
    }
}
