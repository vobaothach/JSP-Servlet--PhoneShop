package com.phoneshop.dao.impl;

import com.phoneshop.dao.IDiscountDAO;
import com.phoneshop.entity.DiscountEntity;
import org.springframework.beans.BeanUtils;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class DiscountDAO extends BaseDAO<DiscountEntity> implements IDiscountDAO {
    @Override
    public List<DiscountEntity> findAll() {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM DiscountEntity c");
        List<DiscountEntity> entities = new ArrayList<>();
        try {
            entities = q.getResultList();
        } catch (NoResultException e) {
            entities = new ArrayList<>();
        }

        em.close();
        return entities;
    }

    @Override
    public DiscountEntity save(DiscountEntity entity) {
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
        return this.findById(entity.getCode());
    }

    @Override
    public DiscountEntity update(DiscountEntity entity) {
        EntityManager em  = getEntityManagerFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            DiscountEntity discountEntity = this.findById(entity.getCode());
            BeanUtils.copyProperties(entity, discountEntity, getNullPropertyNames(entity));
            em.merge(discountEntity);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return null;
        } finally {
            em.close();
        }
        return this.findById(entity.getCode());
    }

    @Override
    public DiscountEntity findById(String code) {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM DiscountEntity c WHERE c.code = :code");
        q.setParameter("code", code);
        DiscountEntity discountEntity = null;
        try {
            discountEntity = (DiscountEntity)q.getSingleResult();
        } catch (NoResultException e) {
            discountEntity = null;
        }

        em.close();
        return discountEntity;
    }

    @Override
    public Boolean delete(String code) {
        try {
            EntityManager em  = getEntityManagerFactory().createEntityManager();
            EntityTransaction trans = em.getTransaction();
            trans.begin();
            try {
                em.remove(em.merge(this.findById(code)));
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
