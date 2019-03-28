package com.myspring.entities;


import javax.persistence.*;

@Entity
@Table(name = "times")
public class Times {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "offset")
    private String room_id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRoom_id() {
        return room_id;
    }

    public void setRoom_id(String room_id) {
        this.room_id = room_id;
    }

    public Times() {

    }

    public Times(String room_id) {

        this.room_id = room_id;
    }

    public Times(Long id, String room_id) {

        this.room_id = room_id;
        this.id = id;
    }
}
