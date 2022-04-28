package com.phoneshop.controller.customer;

import com.phoneshop.service.IOrderItemService;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/order-item"})
public class OrderItemController extends HttpServlet {
    @Inject
    private IOrderItemService orderItemService;

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        if (action == null)
            return;

        if (action.equals("remove")) {
            Integer id = Integer.parseInt(request.getParameter("id"));
            orderItemService.delete(id);
            response.sendRedirect("/cart");
            return;
        }

        return;
    }
}
