package com.phoneshop.dao;

import com.phoneshop.entity.OrderItemEntity;

public interface IOrderItemDAO extends IBaseDAO<OrderItemEntity>{
    OrderItemEntity findById(Integer id);
    Boolean delete(Integer id);
}
