package com.webtiphadoan.repository;

import com.webtiphadoan.model.Login_Model;
import com.webtiphadoan.model.Personnel_Model;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface Login_Repository extends CrudRepository<Login_Model, Integer>{


    @Query(value = "SELECT * FROM webcloud.nhansu p WHERE p.username = :username and p.password = :password", nativeQuery = true)
    public List<Login_Model> find(@Param("username") String username, @Param("password") String password);


}
