package com.myspring.beans;

import com.myspring.entities.Reserves;
import com.myspring.entities.Rooms;
import com.myspring.entities.Times;
import com.myspring.entities.Users;
import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;

public class TimeBean {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Times> getAllTimes(){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Times> criteriaQuery = builder.createQuery(Times.class);
        Root root = criteriaQuery.from(Times.class);
        List<Times> timesList = session.createQuery(criteriaQuery).list();
        return timesList;
    }


    public Times getTimeById(Long id){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Times> criteriaQuery = builder.createQuery(Times.class);
        Root root = criteriaQuery.from(Times.class);
        Predicate idPred = builder.equal(root.get("id"), id);
        List<Times> reservesList = session.createQuery(criteriaQuery.where(idPred)).list();
        session.close();
        return (reservesList!=null?reservesList.get(0):null);
    }

    public Times getTimeByName(String name){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Times> criteriaQuery = builder.createQuery(Times.class);
        Root root = criteriaQuery.from(Times.class);
        Predicate roomName = builder.equal(root.get("name"), name);
        List<Times> reservesList = session.createQuery(criteriaQuery.where(roomName)).list();
        session.close();
        return (reservesList!=null?reservesList.get(0):null);
    }


    public void addTime(Times time){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(time);
        transaction.commit();
        session.close();
    }

    public void updateTime(Times time){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(time);
        transaction.commit();
        session.close();
    }

    public void deleteTime(Times time){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(time);
        transaction.commit();
        session.close();
    }

}
