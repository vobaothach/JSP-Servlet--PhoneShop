package com.phoneshop.controller;

import com.phoneshop.converter.request_entity.AccountRequestEntityConverter;
import com.phoneshop.entity.AccountEntity;
import com.phoneshop.service.IAccountService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {
    @Inject
    private IAccountService accountService;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/register/index.jsp").forward(request, response);
    }

    // Hàm xử lý khi nhấn nut Register
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // nếu người dùng nhập thông tin bằng tiếng việt thì sẽ không bị lỗi 
        AccountEntity accountEntity = AccountRequestEntityConverter.toEntity(request);
        accountEntity = accountService.register(accountEntity); // gọi hàm xử lý chính ở tâng Service
        request.setAttribute("response", accountEntity);
        this.doGet(request, response);
    }
}
