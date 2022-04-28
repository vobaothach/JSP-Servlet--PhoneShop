package com.phoneshop.service;

import com.phoneshop.entity.DiscountEntity;

public interface IDiscountService extends IBaseService<DiscountEntity>{
    DiscountEntity findById(String code);
    Boolean delete(String code);
}
