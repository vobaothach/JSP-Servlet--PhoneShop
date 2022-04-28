package com.phoneshop.controller;

import com.phoneshop.converter.request_entity.AccountRequestEntityConverter;
import com.phoneshop.entity.AccountEntity;
import com.phoneshop.entity.BaseEntity;
import com.phoneshop.service.IAccountService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/login", "/log-in"})
public class LoginController extends HttpServlet {
    @Inject
    private IAccountService accountService;

    // Xử khi khi truy cập vào trang đăng nhập
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Nếu đã đăng nhập rồi (tồn tại account trong session) thì đế luôn trang chủ 
    	if (request.getSession().getAttribute("ACCOUNT_SESSION") != null) {
            response.sendRedirect("/home");
            return;
        }
        request.getRequestDispatcher("/login/index.jsp").forward(request, response);
    }

    // Xử lý khi nhấn nút Sign in
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AccountEntity accountEntity = AccountRequestEntityConverter.toEntity(request);
        accountEntity = accountService.login(accountEntity.getEmail(), accountEntity.getPassword());
        request.setAttribute("account", accountEntity);
        if (accountEntity.getHttpStatus().equals(BaseEntity.HttpStatus.OK))
            request.getSession().setAttribute("ACCOUNT_SESSION", accountEntity); // Lưu account vào session
        this.doGet(request, response);
    }
}
