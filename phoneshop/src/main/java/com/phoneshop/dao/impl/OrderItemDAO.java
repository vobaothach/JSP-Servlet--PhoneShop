package com.phoneshop.dao.impl;

import com.phoneshop.dao.IOrderItemDAO;
import com.phoneshop.entity.OrderItemEntity;
import org.springframework.beans.BeanUtils;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class OrderItemDAO extends BaseDAO<OrderItemEntity> implements IOrderItemDAO {
    @Override
    public List<OrderItemEntity> findAll() {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM OrderItemEntity c");
        List<OrderItemEntity> entities = new ArrayList<>();
        try {
            entities = q.getResultList();
        } catch (NoResultException e) {
            entities = new ArrayList<>();
        }

        em.close();
        return entities;
    }

    @Override
    public OrderItemEntity save(OrderItemEntity entity) {
        EntityManager em  = getEntityManagerFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(entity);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return null;
        } finally {
            em.close();
        }
        return this.findById(entity.getId());
    }

    @Override
    public OrderItemEntity update(OrderItemEntity entity) {
        EntityManager em  = getEntityManagerFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            OrderItemEntity orderItemEntity = this.findById(entity.getId());
            BeanUtils.copyProperties(entity, orderItemEntity, getNullPropertyNames(entity));
            em.merge(orderItemEntity);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return null;
        } finally {
            em.close();
        }
        return this.findById(entity.getId());
    }

    @Override
    public OrderItemEntity findById(Integer id) {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM OrderItemEntity c WHERE c.id = :id");
        q.setParameter("id", id);
        OrderItemEntity orderItemEntity = null;
        try {
            orderItemEntity = (OrderItemEntity)q.getSingleResult();
        } catch (NoResultException e) {
            orderItemEntity = null;
        }

        em.close();
        return orderItemEntity;
    }

    @Override
    public Boolean delete(Integer id) {
        try {
            EntityManager em  = getEntityManagerFactory().createEntityManager();
            EntityTransaction trans = em.getTransaction();
            trans.begin();
            try {
                em.remove(em.merge(this.findById(id)));
                trans.commit();
            } catch (Exception e) {
                e.printStackTrace();
                trans.rollback();
            } finally {
                em.close();
            }
            return true;
        }
        catch(Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
