package com.myspring.beans;

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

public class RoomBean {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Rooms> getAllRooms(){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Rooms> criteriaQuery = builder.createQuery(Rooms.class);
        Root root = criteriaQuery.from(Rooms.class);
        List<Rooms> roomsList = session.createQuery(criteriaQuery).list();
        return roomsList;
    }


    public Rooms getRoomById(Long id){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Rooms> criteriaQuery = builder.createQuery(Rooms.class);
        Root root = criteriaQuery.from(Rooms.class);
        Predicate idPred = builder.equal(root.get("id"), id);
        List<Rooms> roomsList = session.createQuery(criteriaQuery.where(idPred)).list();
        session.close();
        return (roomsList!=null?roomsList.get(0):null);
    }

    public Rooms getRoomByName(String name){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Rooms> criteriaQuery = builder.createQuery(Rooms.class);
        Root root = criteriaQuery.from(Rooms.class);
        Predicate roomName = builder.equal(root.get("name"), name);
        List<Rooms> roomsList = session.createQuery(criteriaQuery.where(roomName)).list();
        session.close();
        return (roomsList!=null?roomsList.get(0):null);
    }


    public void addRoom(Rooms room){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(room);
        transaction.commit();
        session.close();
    }

    public void updateRoom(Rooms room){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(room);
        transaction.commit();
        session.close();
    }

    public void deleteRoom(Rooms room){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(room);
        transaction.commit();
        session.close();
    }


    public String getUserName(Long id){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Users> criteriaQuery = builder.createQuery(Users.class);
        Root root = criteriaQuery.from(Users.class);
        List<Users> usersList = session.createQuery(criteriaQuery.where(builder.equal(root.get("id"), id))).list();
        session.close();
        return (usersList!=null?usersList.get(0).getLogin():null);
    }

    public Rooms getRoom(String name) {
        Session session = sessionFactory.openSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Rooms> query = criteriaBuilder.createQuery(Rooms.class);
        Root<Rooms> root = query.from(Rooms.class);
        Rooms rooms = session.createQuery(query.where(criteriaBuilder.equal(root.get("name"), name))).getSingleResult();
        session.close();
        return rooms;
    }
}
