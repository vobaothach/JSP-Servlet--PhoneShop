package com.phoneshop.service;

import com.phoneshop.entity.ProductEntity;

import java.util.List;

public interface IProductService extends IBaseService<ProductEntity>{
    ProductEntity findById(Integer id);
    Boolean delete(Integer id);

    List<ProductEntity> findAllWithPaging(Integer page, Integer limit);
    Integer count();
    List<ProductEntity> findAllByKeyword(String keyword);
    Boolean addToCart(Integer productId, String email, Integer quantity);
}
