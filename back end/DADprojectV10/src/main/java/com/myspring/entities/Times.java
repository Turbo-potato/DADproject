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


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
