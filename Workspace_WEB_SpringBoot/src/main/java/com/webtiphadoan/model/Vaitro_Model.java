package com.webtiphadoan.model;

import javax.persistence.*;


@Entity
@Table(name ="vaitro")
public class Vaitro_Model {

    public int getIdvaitro() {
        return idvaitro;
    }

    public void setIdvaitro(int idvaitro) {
        this.idvaitro = idvaitro;
    }

    public String getVaitro() {
        return vaitro;
    }

    public void setVaitro(String vaitro) {
        this.vaitro = vaitro;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idvaitro;

    @Column(name = "vaitro")
    private String vaitro;


}
