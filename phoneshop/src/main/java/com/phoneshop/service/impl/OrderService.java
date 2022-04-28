package com.phoneshop.service.impl;

import com.phoneshop.dao.IOrderDAO;
import com.phoneshop.entity.BaseEntity;
import com.phoneshop.entity.OrderEntity;
import com.phoneshop.entity.OrderItemEntity;
import com.phoneshop.service.IOrderService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderService implements IOrderService {
    @Inject
    private IOrderDAO orderDAO;

    @Override
    public OrderEntity exceptionEntity(BaseEntity entity, String exceptionMsg) {
        return null;
    }

    @Override
    public List<OrderEntity> findAll() {
        return null;
    }

    @Override
    public OrderEntity save(OrderEntity entity) {
        return null;
    }

    @Override
    public OrderEntity update(OrderEntity entity) {
        return null;
    }

    // Tìm kiếm đơn hàng thông qua id
    @Override
    public OrderEntity findById(Integer id) {
        return orderDAO.findById(id);
    }

    @Override
    public Boolean delete(Integer id) {
        return null;
    }

    // Tìm kiếm đơn hàng trong chưa thanh toán (giỏ hàng) thông qua email
    @Override
    public OrderEntity findCartByAccountEmail(String email) {
        List<OrderEntity> orders = orderDAO.findAll();
        OrderEntity resOrder = null;
        for (OrderEntity order: orders)
            if (order.getUser().getEmail().equals(email) && order.getStatus().equals(false)) {
                resOrder = order;
                break;
            }

        return resOrder;
    }

    // Xử lý chức năng thanh toán 
    @Override
    public OrderEntity pay(String email, String address, String description) {
        OrderEntity orderEntity = findCartByAccountEmail(email);
        orderEntity.setAddress(address);
        orderEntity.setDescription(description);
        orderEntity.setStatus(true); // Cập nhật trạng thái đơn hàng này về true
        orderEntity.setDate(new Date());
        return orderDAO.update(orderEntity);
    }

    // Tìm những đơn hàng mà người dùng đã thanh toán (status = true)
    @Override
    public List<OrderEntity> findPaymentByAccountEmail(String email) {
        List<OrderEntity> orders = orderDAO.findAll();
        List<OrderEntity> res = new ArrayList<>();
        for (OrderEntity order: orders)
            if (order.getUser().getEmail().equals(email) && order.getStatus().equals(true)) {
                res.add(order);
            }

        return res;
    }

    @Override
    public void countCartTotalByEmail(String email) {
        OrderEntity orderEntity = findCartByAccountEmail(email);
        float total = 0;
        for (OrderItemEntity orderItem: orderEntity.getOrderItems()) {
            total += orderItem.getProduct().getPrice()*orderItem.getQuantity();
        }
        orderEntity.setTotal(total);
        orderDAO.update(orderEntity);
    }
}
