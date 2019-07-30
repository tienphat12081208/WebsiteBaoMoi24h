package com.webtiphadoan.repository;


import com.webtiphadoan.model.News_Model;
import com.webtiphadoan.model.Number_View_Model;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
public interface  Number_View_Repository extends CrudRepository<Number_View_Model, Integer> {
    @Modifying
    @Transactional
    @Query(value= "UPDATE newsview p  SET views= p.views+1 WHERE idnews=?1",  nativeQuery = true)
    void  Update_View(int id) ;

    @Modifying
    @Transactional
    @Query(value= "INSERT INTO newsview (idnews, views) VALUES (?1,?2);",  nativeQuery = true)
    void  Insert_View(int idnews,int views) ;

    @Modifying
    @Transactional
    @Query(value= "delete from newsview where idnews=?1",  nativeQuery = true)
    void  Delete_View(int idnews) ;

    @Modifying
    @Transactional
    @Query(value= "select * from webcloud.newsview p where p.idnews=?1",  nativeQuery = true)
    List<Number_View_Model> Find_View(int idnews) ;


}