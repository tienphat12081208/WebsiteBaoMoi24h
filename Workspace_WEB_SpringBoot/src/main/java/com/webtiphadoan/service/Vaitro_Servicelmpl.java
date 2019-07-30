package com.webtiphadoan.service;

import java.util.List;


import com.webtiphadoan.model.Vaitro_Model;

import com.webtiphadoan.repository.Vaitro_Repositoty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class Vaitro_Servicelmpl implements Vaitro_Service {

    @Autowired
    Vaitro_Repositoty vaitro_repositoty;

    @Override
    public List<Vaitro_Model> GetALLvaitro() {
        return (List<Vaitro_Model>) vaitro_repositoty.findAll();
    }


}