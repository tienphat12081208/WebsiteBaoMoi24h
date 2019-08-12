package com.webtiphadoan.service;

import com.webtiphadoan.model.Chuyen_Muc_Model;
import com.webtiphadoan.repository.Chuyen_Muc_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class Chuyenmuc_Servicelmpl implements Chuyenmuc_Service {
    @Autowired
    Chuyen_Muc_Repository chuyen_muc_repository;
    @Override
    public List<Chuyen_Muc_Model> GetChuyenmucALL() {
        return chuyen_muc_repository.SelectALL();
    }



}
