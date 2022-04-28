package com.phoneshop.dao;

import com.phoneshop.entity.ProductEntity;

public interface IProductDAO extends IBaseDAO<ProductEntity>{
    ProductEntity findById(Integer id);
    Boolean delete(Integer id);
}
