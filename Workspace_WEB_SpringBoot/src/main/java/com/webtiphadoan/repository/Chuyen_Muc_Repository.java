package com.webtiphadoan.repository;

import com.webtiphadoan.model.Chuyen_Muc_Model;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface Chuyen_Muc_Repository extends CrudRepository<Chuyen_Muc_Model, Integer> {
    @Modifying
    @Transactional
    @Query(value= "SELECT * FROM webcloud.chuyenmuc",  nativeQuery = true)
    public List<Chuyen_Muc_Model> SelectALL();
}
