package com.webtiphadoan.model;

import javax.persistence.*;

@Entity
@Table(name="newstrangthai")
public class Trangthai_Model {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getIdnews() {
        return idnews;
    }

    public void setIdnews(String idnews) {
        this.idnews = idnews;
    }

    @Column(name = "idnews")
    private String idnews;




    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }

    @Column(name = "trangthai")
    private String trangthai;

}