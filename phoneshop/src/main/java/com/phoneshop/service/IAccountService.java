package com.phoneshop.service;

import com.phoneshop.entity.AccountEntity;

public interface IAccountService extends IBaseService<AccountEntity>{
    AccountEntity findById(String email);
    Boolean delete(String email);

    AccountEntity login(String email, String password);
    AccountEntity register(AccountEntity accountEntity);
}
