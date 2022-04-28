package com.phoneshop.service.impl;

import com.phoneshop.dao.IOrderItemDAO;
import com.phoneshop.dao.IProductDAO;
import com.phoneshop.entity.BaseEntity;
import com.phoneshop.entity.OrderItemEntity;
import com.phoneshop.entity.ProductEntity;
import com.phoneshop.service.IOrderItemService;

import javax.inject.Inject;
import java.util.List;

public class OrderItemService implements IOrderItemService {
    @Inject
    private IOrderItemDAO orderItemDAO;

    @Inject
    private IProductDAO productDAO;

    @Override
    public OrderItemEntity exceptionEntity(BaseEntity entity, String exceptionMsg) {
        return null;
    }

    @Override
    public List<OrderItemEntity> findAll() {
        return null;
    }

    @Override
    public OrderItemEntity save(OrderItemEntity entity) {
        return null;
    }

    @Override
    public OrderItemEntity update(OrderItemEntity entity) {
        return orderItemDAO.update(entity);
    }

    @Override
    public OrderItemEntity findById(Integer id) {
        return null;
    }

    @Override
    public Boolean delete(Integer id) {
        try {
            return orderItemDAO.delete(id);
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public Boolean updateCart(String[] orderItemIds, String[] quantities) {
        for (int i=0; i<orderItemIds.length; i++) {
            OrderItemEntity orderItem = new OrderItemEntity();
            orderItem.setId(Integer.parseInt(orderItemIds[i]));
            orderItem.setQuantity(Integer.parseInt(quantities[i]));
            OrderItemEntity oldOrderItem = orderItemDAO.findById(orderItem.getId());
            orderItem.setSubtotal(orderItem.getQuantity()*oldOrderItem.getProduct().getPrice());
            orderItemDAO.update(orderItem);
        }

        return false;
    }
}
