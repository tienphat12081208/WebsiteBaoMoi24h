package com.webtiphadoan.repository;

import com.webtiphadoan.model.Trangthai_Model;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public interface  Trangthai_Repository extends CrudRepository<Trangthai_Model, Integer> {
    @Modifying
    @Transactional
    @Query(value= "INSERT INTO newstrangthai (idnews,trangthai) VALUES (?1,?2);",  nativeQuery = true)
    void  Insert_Trangthai(int idnews,int trangthai) ;
    @Modifying
    @Transactional
    @Query(value= "delete from newstrangthai where idnews=?1",  nativeQuery = true)
    void  Delete_Trangthai(int idnews) ;
    @Modifying
    @Transactional
    @Query(value= "UPDATE `newstrangthai` p  SET trangthai= 1 WHERE idnews=?1",  nativeQuery = true)
    void  Update_Trangthai(int id) ;


}
