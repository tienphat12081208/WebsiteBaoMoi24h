package com.webtiphadoan.service;

import com.webtiphadoan.model.Login_Model;
import com.webtiphadoan.model.Personnel_Model;
import com.webtiphadoan.repository.Login_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class Login_ServiceImpl implements Login_Service {
    @Autowired
    Login_Repository loginRepository;



    @Override
    public List<Login_Model> getAccount2(String user, String pass) {
        return loginRepository.find(user,pass);
    }



}
