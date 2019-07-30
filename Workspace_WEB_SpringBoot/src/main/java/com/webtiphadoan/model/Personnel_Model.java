package com.webtiphadoan.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name="nhansu")
public class Personnel_Model {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name ="username")
    private String user;

    @Column(name ="password")
    private String pass;

    @Column(name ="noisinh")
    private String noisinh;

    @Column(name = "name")
    private String name;


    @DateTimeFormat(pattern ="dd/MM/yyyy")
    @Temporal(TemporalType.DATE)
    @Column(name = "ngaysinh")
    private Date ngaysinh;

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getIdvaitro() {
        return idvaitro;
    }

    public void setIdvaitro(String idvaitro) {
        this.idvaitro = idvaitro;
    }

    @Column(name = "cmnd")
    private String cmnd;
    @Column(name = "gioitinh")
    private String gioitinh;
    @Column(name = "diachi")
    private String diachi;
    @Column(name = "idvaitro")
    private String idvaitro;








    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }


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

    public String getNoisinh() {
        return noisinh;
    }
    public void setNoisinh(String noisinh) {
        this.noisinh = noisinh;
    }

    public String Find_Personnel( String tennhanvien) {
        return tennhanvien;
    }
    public  String  getName()
    {
        return name;
    }
    public  void setName(String name)
    {
        this.name = name;
    }


}
