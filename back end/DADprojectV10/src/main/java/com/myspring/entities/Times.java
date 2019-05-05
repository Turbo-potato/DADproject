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
    private String offset;

    private String firstOffset;

    private String secondOffset;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstOffset() {
        String[] parts = offset.split("-");
        this.firstOffset = parts[0];
        return firstOffset;
    }

    public void setFirstOffset(String firstOffset) {
        String[] parts = offset.split("-");
        this.firstOffset = parts[0];
    }

    public String getSecondOffset() {
        String[] parts = offset.split("-");
        this.secondOffset = parts[1];
        return secondOffset;
    }

    public void setSecondOffset(String secondOffset) {
        String[] parts = offset.split("-");
        this.secondOffset = parts[1];
    }

    public Times() {

    }

    public Times(String offset) {
        this.offset = offset;
    }

    public Times(Long id, String offset) {
        this.offset = offset;
        this.id = id;
    }

    public String getOffset() {

        return offset;
    }

    public void setOffset(String offset) {
        this.offset = offset;
    }
}
