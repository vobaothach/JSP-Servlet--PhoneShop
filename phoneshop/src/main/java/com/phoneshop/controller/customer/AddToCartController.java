package com.phoneshop.controller.customer;

import com.phoneshop.entity.AccountEntity;
import com.phoneshop.service.IProductService;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/add-to-cart"})
public class AddToCartController extends HttpServlet {
    @Inject
    private IProductService productService;

    // Thêm sản phẩm vào giỏ hàng 
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        AccountEntity accountSession = (AccountEntity) request.getSession().getAttribute("ACCOUNT_SESSION");
        
        // Yêu cầu người dùng đăng nhập nếu chưa đăng nhập
        if (accountSession == null) {
            String message = "You need to log in to do this action";
            response.sendRedirect("/login?message=" + message);
            return;
        }

        // Lấy các tham số: id, link và quantity
        Integer id = Integer.parseInt(request.getParameter("id"));
        String link = request.getParameter("link");
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));
        // Thực hiện thêm sản phẩm vào giỏ hàng
        Boolean isAddToCart = productService.addToCart(id, accountSession.getEmail(), quantity);
        if (!isAddToCart) { // Nếu sản phẩm đã tồn tại 
            String message = "Product has existed in your cart";
            if (!link.contains("?"))
                response.sendRedirect(link + "?message=" + message);
            else
                response.sendRedirect(link + "&message=" + message);

            return;
        }

        String message = "Add to cart successfully";
        if (!link.contains("?"))
            response.sendRedirect(link + "?message=" + message);
        else
            response.sendRedirect(link + "&message=" + message);
    }
}
