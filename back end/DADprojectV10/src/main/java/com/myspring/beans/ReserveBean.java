package com.myspring.beans;

import com.myspring.entities.Reserves;
import com.myspring.entities.Rooms;
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

public class ReserveBean {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Reserves> getAllReserves(){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Reserves> criteriaQuery = builder.createQuery(Reserves.class);
        Root root = criteriaQuery.from(Reserves.class);
        List<Reserves> reservesList = session.createQuery(criteriaQuery).list();
        return reservesList;
    }


    public Reserves getReserveById(Long id){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Reserves> criteriaQuery = builder.createQuery(Reserves.class);
        Root root = criteriaQuery.from(Reserves.class);
        Predicate idPred = builder.equal(root.get("id"), id);
        List<Reserves> reservesList = session.createQuery(criteriaQuery.where(idPred)).list();
        session.close();
        return (reservesList!=null?reservesList.get(0):null);
    }

    public boolean isMyReserveById(Long reserve_id, Long user_id){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Reserves> criteriaQuery = builder.createQuery(Reserves.class);
        Root root = criteriaQuery.from(Reserves.class);
        Predicate userIdPred = builder.equal(root.get("user_id"), user_id);
        Predicate reserveIdPred = builder.equal(root.get("id"), reserve_id);
        List<Reserves> reservesList = session.createQuery(criteriaQuery.where(builder.and(reserveIdPred,userIdPred))).list();
        session.close();
        return (reservesList!=null?true:false);
    }

    public Reserves getReserveByName(String name){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Reserves> criteriaQuery = builder.createQuery(Reserves.class);
        Root root = criteriaQuery.from(Rooms.class);
        Predicate roomName = builder.equal(root.get("name"), name);
        List<Reserves> reservesList = session.createQuery(criteriaQuery.where(roomName)).list();
        session.close();
        return (reservesList!=null?reservesList.get(0):null);
    }

    public void addReserve(Reserves reserve){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(reserve);
        transaction.commit();
        session.close();
    }

    public void updateRoom(Reserves reserve){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(reserve);
        transaction.commit();
        session.close();
    }

    public void deleteReserve(Reserves reserve){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(reserve);
        transaction.commit();
        session.close();
    }

    public Reserves getSpecificReserve(Reserves reserve){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Reserves> criteriaQuery = builder.createQuery(Reserves.class);
        Root root = criteriaQuery.from(Reserves.class);
        Predicate room_id = builder.equal(root.get("room_id"), reserve.getRoom_id());
        Predicate time_id = builder.equal(root.get("time_id"), reserve.getTime_id());
        Predicate user_id = builder.equal(root.get("user_id"), reserve.getUser_id());
        Predicate start_time = builder.equal(root.get("start_time"), reserve.getStart_time());
        Predicate finish_time = builder.equal(root.get("finish_time"), reserve.getFinish_time());
        Reserves reserveDB = session.createQuery(criteriaQuery.where(builder.and(room_id, time_id,user_id,start_time,finish_time))).getSingleResult();
        session.close();
        return reserveDB;
    }

}
