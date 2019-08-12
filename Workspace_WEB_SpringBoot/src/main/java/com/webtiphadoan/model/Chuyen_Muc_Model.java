package com.webtiphadoan.model;

import javax.persistence.*;


@Entity
@Table(name ="chuyenmuc")
public class Chuyen_Muc_Model {


    public int getIdchuyenmuc() {
        return idchuyenmuc;
    }

    public void setIdchuyenmuc(int idchuyenmuc) {
        this.idchuyenmuc = idchuyenmuc;
    }

    public String getChuyenmuc() {
        return chuyenmuc;
    }

    public void setChuyenmuc(String chuyenmuc) {
        this.chuyenmuc = chuyenmuc;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idchuyenmuc;

    @Column(name = "chuyenmuc")
    private String chuyenmuc;

    public String getUrlchuyenmuc() {
        return urlchuyenmuc;
    }

    public void setUrlchuyenmuc(String urlchuyenmuc) {
        this.urlchuyenmuc = urlchuyenmuc;
    }

    @Column(name = "urlchuyenmuc")
    private String urlchuyenmuc;


}
