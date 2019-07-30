package com.webtiphadoan.model;

import javax.persistence.*;


@Entity
@Table(name ="nhansu")
public class Login_Model {

    @Id
    @GeneratedValue
    @Column(name = "username")
    private String user;

    @Column(name = "password")
    private String pass;

    public String getIdvaitro() {
        return idvaitro;
    }

    public void setIdvaitro(String idvaitro) {
        this.idvaitro = idvaitro;
    }

    @Column(name = "idvaitro")
    private String idvaitro;
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "name")
    private String name;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getNameuser(String nameuser) {
        return nameuser;
    }



}
