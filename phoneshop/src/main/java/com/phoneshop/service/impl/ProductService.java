package com.phoneshop.service.impl;

import com.phoneshop.dao.IAccountDAO;
import com.phoneshop.dao.IOrderDAO;
import com.phoneshop.dao.IOrderItemDAO;
import com.phoneshop.dao.IProductDAO;
import com.phoneshop.entity.OrderEntity;
import com.phoneshop.entity.OrderItemEntity;
import com.phoneshop.entity.ProductEntity;
import com.phoneshop.service.IOrderService;
import com.phoneshop.service.IProductService;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

public class ProductService extends BaseService<ProductEntity> implements IProductService {
    @Inject
    private IProductDAO productDAO;

    @Inject
    private IOrderService orderService;

    @Inject
    private IOrderDAO orderDAO;

    @Inject
    private IAccountDAO accountDAO;

    @Inject
    private IOrderItemDAO orderItemDAO;

    @Override
    public List<ProductEntity> findAll() {
        return null;
    }

    @Override
    public ProductEntity save(ProductEntity entity) {
        return null;
    }

    @Override
    public ProductEntity update(ProductEntity entity) {
        return null;
    }

    @Override
    public ProductEntity findById(Integer id) {
        return productDAO.findById(id);
    }

    @Override
    public Boolean delete(Integer id) {
        return null;
    }

    // Lấy danh sách sản phẩm theo số trang và số lượng sản phẩm 
    @Override
    public List<ProductEntity> findAllWithPaging(Integer page, Integer limit) {
        try {
            List<ProductEntity> products = productDAO.findAll(); // Lấy ra tất cả sản phẩm
            List<ProductEntity> res = new ArrayList<>(); // Kết quả trả về
            if ((page-1)*limit >= products.size())
                return null;

            for (int i=(page-1)*limit; res.size()<limit && i<products.size(); i++) {
                res.add(products.get(i));
            }

            return res;

        } catch (Exception ex) {
            return new ArrayList<>();
        }
    }

    @Override
    public Integer count() {
        return productDAO.findAll().size();
    }

    @Override
    public List<ProductEntity> findAllByKeyword(String keyword) {
        List<ProductEntity> products = productDAO.findAll();
        List<ProductEntity> res = new ArrayList<>();

        for (ProductEntity productEntity: products) {
            if (productEntity.getName().toLowerCase().contains(keyword.toLowerCase()))
                res.add(productEntity);
        }

        return res;
    }

    // Thêm sản phẩm vào giỏ hàng 
    @Override
    public Boolean addToCart(Integer productId, String email, Integer quantity) {
        OrderEntity orderEntity = orderService.findCartByAccountEmail(email);
        if (orderEntity == null) {
            orderEntity = new OrderEntity();
            orderEntity.setUser(accountDAO.findById(email));
            orderEntity.setStatus(false);
            orderEntity = orderDAO.save(orderEntity);
        }

        for (OrderItemEntity orderItemEntity: orderEntity.getOrderItems()) {
            if (orderItemEntity.getProduct().getId().equals(productId))
                return false;
        }

        ProductEntity product = productDAO.findById(productId);
        OrderItemEntity orderItem = new OrderItemEntity();
        orderItem.setQuantity(quantity);
        orderItem.setOrder(orderEntity);
        orderItem.setProduct(product);
        orderItem.setSubtotal(product.getPrice()*quantity);
        orderItemDAO.save(orderItem);

        return true;
    }
}
