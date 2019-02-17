package com.myspring.entities;
import javax.persistence.*;

@Entity
@Table(name = "roles")
public class Roles {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "role")
    private String role;

    public Roles(String role) {
        this.role = role;
    }
    public Roles(Long id, String role) {
        this.id = id;
        this.role = role;
    }

    public Roles() {
    }

    public Long getId() {

        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
