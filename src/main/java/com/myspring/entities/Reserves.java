package com.myspring.entities;


import javax.persistence.*;

@Entity
@Table(name = "reserves")
public class Reserves {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="user_id")
    private Users users;



    @Column(name = "room_id")
    private Long room_id;

    @Column(name = "time_id")
    private Long time_id;
    @Column(name="status")
    private String status;

    public Reserves(Long room_id, Long time_id, String status) {
        this.room_id = room_id;
        this.time_id = time_id;
        this.status = status;
    }

    public Reserves(Users users, Long room_id, Long time_id, String status) {
        this.users = users;
        this.room_id = room_id;
        this.time_id = time_id;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoom_id() {
        return room_id;
    }

    public void setRoom_id(Long room_id) {
        this.room_id = room_id;
    }

    public Long getTime_id() {
        return time_id;
    }

    public void setTime_id(Long time_id) {
        this.time_id = time_id;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
    public Reserves() {

    }

    public Reserves(Long room_id, Long time_id) {

        this.room_id = room_id;
        this.time_id = time_id;
    }

    public Reserves(Long id, Long room_id, Long time_id) {

        this.id = id;
        this.room_id = room_id;
        this.time_id = time_id;
    }
}
