package com.myspring.beans;

import com.myspring.entities.Users;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.apache.commons.codec.digest.DigestUtils;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;

public class UserBean {

    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Users> getAllUsers(){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Users> criteriaQuery = builder.createQuery(Users.class);
        Root root = criteriaQuery.from(Users.class);
        List<Users> UsersList = session.createQuery(criteriaQuery).list();
        return UsersList;
    }

    public Users getUserByLoginAndPassword(String login, String password){
        Session session = sessionFactory.openSession();
        //ATTENTION: WRONG SECURITY IN PASSWORDS
        password = DigestUtils.sha1Hex(password);
       /* Transaction transaction = session.beginTransaction();
        List result = session.createQuery("SELECT id,login,password,role FROM users where login=:login AND password=:password")
        .setParameter("login", login)
        .setParameter("password",password)
        .list();
        String sql = "From users u where u.login =:login AND u.password=:password";
        Query query = session.createQuery(sql);
        query.setParameter("login",login);
        query.setParameter("password",login);
        List list = query.getResultList();*/

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Users> criteriaQuery = builder.createQuery(Users.class);
        Root root = criteriaQuery.from(Users.class);
        Predicate loginPred = builder.equal(root.get("login"), login);
        Predicate passPred = builder.equal(root.get("password"), password);
        List<Users> usersList = session.createQuery(criteriaQuery.where(builder.and(loginPred,passPred))).list();
        //session.flush();
        session.close();
        return (usersList!=null?usersList.get(0):null);
    }

    public Users getUserById(Long id){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Users> criteriaQuery = builder.createQuery(Users.class);
        Root root = criteriaQuery.from(Users.class);
        Predicate idPred = builder.equal(root.get("id"), id);
        List<Users> usersList = session.createQuery(criteriaQuery.where(idPred)).list();
        session.close();
        return (usersList!=null?usersList.get(0):null);
    }

    public Users getUserByUsername(String login){
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Users> criteriaQuery = builder.createQuery(Users.class);
        Root root = criteriaQuery.from(Users.class);
        Predicate userLogin = builder.equal(root.get("login"), login);
        List<Users> usersList = session.createQuery(criteriaQuery.where(userLogin)).list();
        session.close();
        return (usersList!=null?usersList.get(0):null);
    }


    public void addUser(Users user){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(user);
        transaction.commit();
        session.close();
    }

    public void updateUser(Users user){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.update(user);
        transaction.commit();
        session.close();
    }

    public void deleteUser(Users user){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(user);
        transaction.commit();
        session.close();
    }

    public Users getUserByTaskAndId(Long id, Long user_id){
        Session session = sessionFactory.openSession();

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Users> criteriaQuery = builder.createQuery(Users.class);
        Root root = criteriaQuery.from(Users.class);
        Predicate loginPred = builder.equal(root.get("id"), id);
        Predicate passPred = builder.equal(root.get("user_id"), user_id);
        List<Users> usersList = session.createQuery(criteriaQuery.where(builder.and(loginPred,passPred))).list();
        session.close();
        return (usersList!=null?usersList.get(0):null);
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

    public Users getUser(String login) {
        Session session = sessionFactory.openSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Users> query = criteriaBuilder.createQuery(Users.class);
        Root<Users> root = query.from(Users.class);
        Users users = session.createQuery(query.where(criteriaBuilder.equal(root.get("login"), login))).getSingleResult();
        session.close();
        return users;
    }

}
