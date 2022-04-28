package com.phoneshop.converter.request_entity;

import com.phoneshop.entity.AccountEntity;

import javax.servlet.http.HttpServletRequest;

public class AccountRequestEntityConverter {
    public static AccountEntity toEntity(HttpServletRequest request) {
        AccountEntity accountEntity = new AccountEntity();

        accountEntity.setEmail(request.getParameter("email"));
        accountEntity.setPassword(request.getParameter("password"));
        accountEntity.setRole(request.getParameter("role"));
        accountEntity.setName(request.getParameter("name"));
        accountEntity.setAddress(request.getParameter("address"));
        accountEntity.setPhone(request.getParameter("phone"));

        return accountEntity;
    }
}
