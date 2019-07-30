package com.webtiphadoan.model;
import java.util.Date;



import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.*;



@Entity
@Table(name="news")
public class News_Model {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getChuyenmuc() {
        return chuyenmuc;
    }

    public void setChuyenmuc(String chuyenmuc) {
        this.chuyenmuc = chuyenmuc;
    }

    public String getNoidung() {
        return noidung;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public String Find_View( String id) {
        return id;
    }

    public String getTacgia() {
        return tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }

    @Column(name = "tacgia")
    private String tacgia;


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

    @Column(name = "tieude")
    private String tieude;

    @Column(name = "chuyenmuc")
    private String chuyenmuc;

    @Column(name = "noidung")
    private String noidung;
    @Column(name = "hinhanh")
    private String hinhanh;

    public String getTomtat() {
        return tomtat;
    }

    public void setTomtat(String tomtat) {
        this.tomtat = tomtat;
    }

    @Column(name = "tomtat")
    private String tomtat;
}