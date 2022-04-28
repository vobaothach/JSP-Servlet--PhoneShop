package com.phoneshop.dao;

import com.phoneshop.entity.OrderEntity;

public interface IOrderDAO extends IBaseDAO<OrderEntity>{
    OrderEntity findById(Integer id);
    Boolean delete(Integer id);
}
