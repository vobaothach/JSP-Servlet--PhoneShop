package com.phoneshop.service.impl;

import com.phoneshop.dao.IAccountDAO;
import com.phoneshop.entity.AccountEntity;
import com.phoneshop.entity.BaseEntity;
import com.phoneshop.service.IAccountService;

import javax.inject.Inject;
import java.util.List;

public class AccountService extends BaseService<AccountEntity> implements IAccountService {
    @Inject
    private IAccountDAO accountDAO;

    @Override
    public AccountEntity findById(String email) {
        return null;
    }

    @Override
    public Boolean delete(String email) {
        return null;
    }

    // Xử lý chức năng đăng nhập
    @Override
    public AccountEntity login(String email, String password) {
        AccountEntity resEntity = new AccountEntity();
        AccountEntity accountEntity = accountDAO.findById(email); // tìm account trong db
        // Không tồn tại account
        if (accountEntity == null) {
            resEntity.setHttpStatus(BaseEntity.HttpStatus.ERROR);
            resEntity.setMessage("Invalid email");
            return resEntity;
        }

        // Tồn tại email nhưng nhập sai mật khẩu 
        if (!accountEntity.getPassword().equals(password)) {
            resEntity.setHttpStatus(BaseEntity.HttpStatus.ERROR);
            resEntity.setMessage("Invalid password");
            return resEntity;
        }

        // Đăng nhập thành công
        accountEntity.setMessage("Sign in successfully");
        return accountEntity;
    }

    // Xử lý chức năng đăng ký
    @Override
    public AccountEntity register(AccountEntity accountEntity) {
        AccountEntity resEntity = new AccountEntity();
        try {
        	// Kiểm tra xem email đã tồn tại hay chưa 
            if (accountDAO.findById(accountEntity.getEmail()) != null) {
                resEntity.setHttpStatus(BaseEntity.HttpStatus.ERROR);
                resEntity.setMessage("Email exists");
                return resEntity;
            }

            // Thực hiện đăng ký
            accountEntity.setOrders(null);
            accountEntity.setRole("Customer");
            resEntity = accountDAO.save(accountEntity);
            resEntity.setMessage("Register successfully");
            return resEntity;
        } catch (Exception ex) {
        	// Vứt ra lỗi nếu chưa đăng ký thành công
            resEntity.setHttpStatus(BaseEntity.HttpStatus.ERROR);
            resEntity.setMessage("Something went wrong: " + ex.toString());
            return resEntity;
        }

    }

    @Override
    public List<AccountEntity> findAll() {
        return null;
    }

    @Override
    public AccountEntity save(AccountEntity entity) {
        return null;
    }

    @Override
    public AccountEntity update(AccountEntity entity) {
        return null;
    }
}
