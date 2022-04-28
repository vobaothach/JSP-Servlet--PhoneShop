package com.phoneshop.service;

import com.phoneshop.entity.OrderItemEntity;

public interface IOrderItemService extends IBaseService<OrderItemEntity>{
    OrderItemEntity findById(Integer id);
    Boolean delete(Integer id);

    Boolean updateCart(String[] productIds, String[] quantities);
}
