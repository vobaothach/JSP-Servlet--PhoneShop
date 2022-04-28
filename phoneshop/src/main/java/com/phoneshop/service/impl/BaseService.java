package com.phoneshop.service.impl;

import com.phoneshop.entity.BaseEntity;
import com.phoneshop.service.IBaseService;

public abstract class BaseService<E> implements IBaseService<E> {
    @Override
    public E exceptionEntity(BaseEntity entity, String exceptionMsg) {
        entity.setMessage(exceptionMsg);
        entity.setHttpStatus(BaseEntity.HttpStatus.ERROR);
        return (E)entity;
    }
}
