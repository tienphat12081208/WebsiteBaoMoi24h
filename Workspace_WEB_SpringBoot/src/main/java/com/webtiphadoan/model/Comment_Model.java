package com.webtiphadoan.model;
import java.util.Date;
import java.util.Set;


import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.*;



@Entity
@Table(name="binhluan")
public class Comment_Model{

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getId_news() {
        return id_news;
    }

    public void setId_news(String id_news) {
        this.id_news = id_news;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getNoidungbinhluan() {
        return noidungbinhluan;
    }

    public void setNoidungbinhluan(String noidungbinhluan) {
        this.noidungbinhluan = noidungbinhluan;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;



    @Column(name = "id_news")
    private String id_news;


    public Date getThoigian() {
        return thoigian;
    }

    public void setThoigian(Date thoigian) {
        this.thoigian = thoigian;
    }

    @DateTimeFormat(pattern ="dd/MM/yyyy HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "thoigian")
    private Date thoigian;

    @Column(name = "id_user")
    private String id_user;


    @Column(name = "noidungbinhluan")
    private String noidungbinhluan;






}