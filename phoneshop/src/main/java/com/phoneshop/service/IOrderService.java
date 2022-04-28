package com.phoneshop.service;

import com.phoneshop.entity.OrderEntity;

import java.util.List;

public interface IOrderService extends IBaseService<OrderEntity>{
    OrderEntity findById(Integer id);
    Boolean delete(Integer id);

    OrderEntity findCartByAccountEmail(String email);
    OrderEntity pay(String email, String address, String description);
    List<OrderEntity> findPaymentByAccountEmail(String email);
    void countCartTotalByEmail(String email);
}
