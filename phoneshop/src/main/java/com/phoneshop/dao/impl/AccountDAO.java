package com.phoneshop.dao.impl;

import com.phoneshop.dao.IAccountDAO;
import com.phoneshop.entity.AccountEntity;
import org.springframework.beans.BeanUtils;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO extends BaseDAO<AccountEntity> implements IAccountDAO {
    @Override
    public List<AccountEntity> findAll() {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM AccountEntity c");
        List<AccountEntity> entities = new ArrayList<>();
        try {
            entities = q.getResultList();
        } catch (NoResultException e) {
            entities = new ArrayList<>();
        }

        em.close();
        return entities;
    }

    @Override
    public AccountEntity save(AccountEntity entity) {
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
        return this.findById(entity.getEmail());
    }

    @Override
    public AccountEntity update(AccountEntity entity) {
        EntityManager em  = getEntityManagerFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            AccountEntity accountEntity = this.findById(entity.getEmail());
            BeanUtils.copyProperties(entity, accountEntity, getNullPropertyNames(entity));
            em.merge(accountEntity);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return null;
        } finally {
            em.close();
        }
        return this.findById(entity.getEmail());
    }

    @Override
    public AccountEntity findById(String email) {
        EntityManager em = this.getEntityManagerFactory().createEntityManager();
        Query q = em.createQuery("SELECT c FROM AccountEntity c WHERE c.email = :email");
        q.setParameter("email", email);
        AccountEntity accountEntity = null;
        try {
            accountEntity = (AccountEntity) q.getSingleResult();
        } catch (NoResultException e) {
            accountEntity = null;
        }

        em.close();
        return accountEntity;
    }

    @Override
    public Boolean delete(String email) {
        try {
            EntityManager em  = getEntityManagerFactory().createEntityManager();
            EntityTransaction trans = em.getTransaction();
            trans.begin();
            try {
                em.remove(em.merge(this.findById(email)));
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
