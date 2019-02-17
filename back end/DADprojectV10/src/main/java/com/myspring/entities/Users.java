package com.myspring.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users")
public class Users implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id",length = 50)
    private Long id;

    @Column(name = "nickname",length = 50)
    private String nickname;

    @Column(name = "login", length = 110)
    private String login;

    @Column(name = "password", length = 250)
    private String password;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Roles> roles;

    public Users(){

    }

    public Users(String login, String password, Set<Roles> roles) {
        this.login = login;
        this.password = password;
        this.roles = roles;
    }

    public Users(Long id, String login, String password) {
        this.login = login;
        this.password = password;
        this.id = id;
        this.roles = new HashSet<Roles>();
    }

    public Set<Roles> getRoles() {
        return roles;
    }

    public void setRoles(Set<Roles> roles) {
        this.roles = roles;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Users(Long id,String login, String password,Set<Roles> roles) {

        this.id = id;
        this.login = login;
        this.password = password;
        this.roles = roles;
    }

    public Users(Long id,String login, String password, String nickname) {
        this.id = id;
        this.nickname = nickname;
        this.login = login;
        this.password = password;
        this.roles = new HashSet<Roles>();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
}
