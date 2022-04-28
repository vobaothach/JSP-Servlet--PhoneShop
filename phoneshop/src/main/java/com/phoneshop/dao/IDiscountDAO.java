package com.phoneshop.dao;

import com.phoneshop.entity.DiscountEntity;

public interface IDiscountDAO extends IBaseDAO<DiscountEntity>{
    DiscountEntity findById(String code);
    Boolean delete(String code);
}
