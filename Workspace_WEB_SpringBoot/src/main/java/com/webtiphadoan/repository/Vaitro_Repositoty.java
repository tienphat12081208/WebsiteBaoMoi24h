package com.webtiphadoan.repository;
import com.webtiphadoan.model.Vaitro_Model;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface  Vaitro_Repositoty extends CrudRepository<Vaitro_Model, Integer> {


}
