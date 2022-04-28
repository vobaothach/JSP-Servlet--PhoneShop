package com.phoneshop.dao;

import com.phoneshop.entity.AccountEntity;

public interface IAccountDAO extends IBaseDAO<AccountEntity> {
    AccountEntity findById(String email);
    Boolean delete(String email);
}
