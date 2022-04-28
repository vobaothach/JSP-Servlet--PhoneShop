package com.phoneshop.controller;

import com.phoneshop.dao.IAccountDAO;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/test"})
public class Test extends HttpServlet {
    @Inject
    private IAccountDAO accountDAO;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        accountDAO.findAll();
    }
}
