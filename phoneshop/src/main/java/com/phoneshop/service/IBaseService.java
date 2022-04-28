package com.phoneshop.service;

import com.phoneshop.entity.BaseEntity;

import java.util.List;

public interface IBaseService<E> {
    E exceptionEntity(BaseEntity entity, String exceptionMsg);
    List<E> findAll();
    E save(E entity);
    E update(E entity);
}
