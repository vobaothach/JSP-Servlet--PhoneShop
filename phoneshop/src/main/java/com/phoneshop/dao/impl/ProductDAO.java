package com.phoneshop.dao.impl;

import com.phoneshop.dao.IProductDAO;
import com.phoneshop.entity.ProductEntity;
import org.springframework.beans.BeanUtils;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO extends BaseDAO<ProductEntity> implements IProductDAO {
    @Override
    public List<ProductEntity> findAll() {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM ProductEntity c");
        List<ProductEntity> entities = new ArrayList<>();
        try {
            entities = q.getResultList();
        } catch (NoResultException e) {
            entities = new ArrayList<>();
        }

        em.close();
        return entities;
    }

    @Override
    public ProductEntity save(ProductEntity entity) {
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
    public ProductEntity update(ProductEntity entity) {
        EntityManager em  = getEntityManagerFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            ProductEntity productEntity = this.findById(entity.getId());
            BeanUtils.copyProperties(entity, productEntity, getNullPropertyNames(entity));
            em.merge(productEntity);
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
    public ProductEntity findById(Integer id) {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM ProductEntity c WHERE c.id = :id");
        q.setParameter("id", id);
        ProductEntity productEntity = null;
        try {
            productEntity = (ProductEntity)q.getSingleResult();
        } catch (NoResultException e) {
            productEntity = null;
        }

        em.close();
        return productEntity;
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
