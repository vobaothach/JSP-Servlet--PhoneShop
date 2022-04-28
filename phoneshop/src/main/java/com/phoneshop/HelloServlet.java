package com.phoneshop;

import com.phoneshop.dao.impl.BaseDAO;
import com.phoneshop.entity.AccountEntity;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        BaseDAO<AccountEntity> baseDao = new BaseDAO<>();
//        baseDao.getEntityManagerFactory();
    }

    public void destroy() {
    }
}