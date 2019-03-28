package com.myspring.entities;


import javax.persistence.*;
import java.sql.Time;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "rooms")
public class Rooms {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id",length = 50)
    private Long id;

    @Column(name = "name",length = 50)
    private String name;

    @Column(name = "time", length = 250)
    private String time;

    @Column(name = "seats", length = 250)
    private String seats;

    @Column(name = "floor", length = 250)
    private String floor;

    @OneToMany(fetch = FetchType.EAGER)
    private Set<Times> times;

    public Rooms(Long id, String name, String time, String seats, String floor, Set<Times> times) {
        this.name = name;
        this.time = time;
        this.seats = seats;
        this.floor = floor;
        this.times = times;
        this.id = id;
        this.times = new HashSet<Times>();
    }

    public Set<Times> getTimes() {

        return times;
    }

    public void setTimes(Set<Times> times) {
        this.times = times;
    }

    public Rooms() {
    }

    public Rooms(String name, String time, String seats, String floor) {

        this.name = name;
        this.time = time;
        this.seats = seats;
        this.floor = floor;
    }

    public Rooms(Long id, String name, String time, String seats, String floor) {
        this.id = id;
        this.name = name;
        this.time = time;
        this.seats = seats;
        this.floor = floor;
        this.times = new HashSet<Times>();
    }

    public Long getId() {

        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getSeats() {
        return seats;
    }

    public void setSeats(String seats) {
        this.seats = seats;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }
}
