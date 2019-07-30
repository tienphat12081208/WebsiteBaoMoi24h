package com.webtiphadoan.service;

import java.util.List;


import com.webtiphadoan.model.Number_View_Model;
import com.webtiphadoan.repository.Number_View_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class Number_View_Servicelmpl implements Number_View_Service {

    @Autowired
    Number_View_Repository number_view_repository;



    @Override
    public void saveOrUpdate(Number_View_Model number_view_model)
    {
        number_view_repository.save(number_view_model);
    }

    @Override
    public Number_View_Model GetNumber_Views(int id)
    {
        return number_view_repository.findById(id).get();
    }


}