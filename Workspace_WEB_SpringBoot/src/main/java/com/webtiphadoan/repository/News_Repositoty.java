package com.webtiphadoan.repository;


import com.webtiphadoan.model.News_Model;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface News_Repositoty extends CrudRepository<News_Model, Integer> {

    @Modifying
    @Transactional
    @Query(value= "SELECT * FROM webcloud.news p WHERE  p.idchuyenmuc = ?1 Order by p.thoigian DESC",  nativeQuery = true)
    List<News_Model> Find_News_chuyenmuc(int idchuyenmuc);

    @Modifying
    @Transactional
    @Query(value= "SELECT p.id,p.tieude,p.noidung,p.hinhanh,p.tomtat,p.idchuyenmuc,p.tacgia,p.thoigian FROM webcloud.news p, webcloud.newstrangthai o WHERE p.`id`=o.`idnews` AND o.`trangthai`!=0",  nativeQuery = true)
    List<News_Model> Select_All_withTT();

    @Modifying
    @Transactional
    @Query(value= "SELECT p.id,p.tieude,p.noidung,p.hinhanh,p.tomtat,p.idchuyenmuc,p.tacgia,p.thoigian FROM news p,newsview o Where p.id=o.idnews Order by views DESC",  nativeQuery = true)
    List<News_Model> Order_Views() ;

    @Modifying
    @Transactional
    @Query(value= "Select * From webcloud.news o where o.idchuyenmuc=(Select p.idchuyenmuc From webcloud.news p where p.id=?1)",  nativeQuery = true)
    List<News_Model> News_connection(int id) ;

    @Modifying
    @Transactional
    @Query(value= "SELECT *FROM webcloud.`news` p WHERE p.`thoigian`=(SELECT MAX(p.`thoigian`) FROM webcloud.news p, webcloud.newstrangthai o WHERE p.`id`=o.`idnews` AND o.`trangthai`!=0)",  nativeQuery = true)
    List<News_Model>  New_news();

}