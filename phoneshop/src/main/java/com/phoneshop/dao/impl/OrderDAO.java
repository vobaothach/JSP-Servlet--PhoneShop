package com.phoneshop.dao.impl;

import com.phoneshop.dao.IOrderDAO;
import com.phoneshop.entity.OrderEntity;
import org.springframework.beans.BeanUtils;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO extends BaseDAO<OrderEntity> implements IOrderDAO {
    @Override
    public List<OrderEntity> findAll() {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM OrderEntity c");
        List<OrderEntity> entities = new ArrayList<>();
        try {
            entities = q.getResultList();
        } catch (NoResultException e) {
            entities = new ArrayList<>();
        }

        em.close();
        return entities;
    }

    @Override
    public OrderEntity save(OrderEntity entity) {
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
    public OrderEntity update(OrderEntity entity) {
        EntityManager em  = getEntityManagerFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            OrderEntity orderEntity = this.findById(entity.getId());
            BeanUtils.copyProperties(entity, orderEntity, getNullPropertyNames(entity));
            em.merge(orderEntity);
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
    public OrderEntity findById(Integer id) {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM OrderEntity c WHERE c.id = :id");
        q.setParameter("id", id);
        OrderEntity orderEntity = null;
        try {
            orderEntity = (OrderEntity)q.getSingleResult();
        } catch (NoResultException e) {
            orderEntity = null;
        }

        em.close();
        return orderEntity;
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
