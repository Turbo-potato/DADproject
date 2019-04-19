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
    @Column(name = "id",length = 100)
    private Long id;

    @Column(name = "name",length = 250)
    private String name;

    @Column(name = "seats", length = 250)
    private String seats;

    @Column(name = "floor", length = 250)
    private String floor;

    @Column(name = "description", length = 255)
    private String description;

    @Column(name = "computers", length = 100)
    private Long computers;

    @Column(name = "hasProjector", length = 100)
    private boolean hasProjector;

    public boolean isHasProjector() {
        return hasProjector;
    }

    public void setHasProjector(boolean hasProjector) {
        this.hasProjector = hasProjector;
    }

    public boolean hasProjector() {
        return hasProjector;
    }

    public Long getComputers() {
        return computers;
    }

    public void setComputers(Long computers) {
        this.computers = computers;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @OneToMany(fetch = FetchType.EAGER)
    private Set<Times> times;

    public Rooms(Long id, String name, String time, String seats, String floor) {
        this.name = name;
        this.seats = seats;
        this.floor = floor;
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

    public Rooms(String name, String seats, String floor) {

        this.name = name;
        this.seats = seats;
        this.floor = floor;
    }

    public Rooms(Long id, String name, String seats, String floor) {
        this.id = id;
        this.name = name;
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
