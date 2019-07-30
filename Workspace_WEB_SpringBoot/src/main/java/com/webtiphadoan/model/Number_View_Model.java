package com.webtiphadoan.model;
import javax.persistence.*;



@Entity
@Table(name="newsview")
public class Number_View_Model {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }




    public String getViews() {
        return views;
    }

    public void setViews(String views) {
        this.views = views;
    }


    public News_Model getIdvnews() {
        return idvnews;
    }

    public void setIdvnews(News_Model idvnews) {
        this.idvnews = idvnews;
    }

    @OneToOne
    @JoinColumn(name = "idnews", nullable = false)
    private News_Model idvnews;


    @Column(name = "views")
    private String views;

}