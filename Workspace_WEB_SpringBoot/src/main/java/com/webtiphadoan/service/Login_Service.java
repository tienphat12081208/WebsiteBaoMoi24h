package com.webtiphadoan.service;

import com.webtiphadoan.model.Login_Model;
import com.webtiphadoan.model.Personnel_Model;

import java.util.List;

public interface Login_Service {


    public List<Login_Model> getAccount2(String user, String pass);

}
