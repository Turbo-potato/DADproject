package com.myspring.entities;


import com.myspring.beans.RoomBean;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;

@Entity
@Table(name = "reserves")
public class Reserves {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "room_id")
    private Long room_id;

    public Reserves(Long id, Long room_id, Long time_id, Long user_id, String start_time, String finish_time, boolean status) {
        this.id = id;
        this.room_id = room_id;
        this.time_id = time_id;
        this.user_id = user_id;
        this.start_time = start_time;
        this.finish_time = finish_time;
        this.status = status;
    }

    @Column(name = "time_id")
    private Long time_id;

    @Column(name = "user_id")
    private Long user_id;

    @Column(name = "start_time")
    private String start_time;

    @Column(name = "finish_time")
    private String finish_time;

    @Column(name = "status")
    private boolean status;

    private String roomName;

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getRoomName() {
        return roomName;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getFinish_time() {
        return finish_time;
    }

    public void setFinish_time(String finish_time) {
        this.finish_time = finish_time;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
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
