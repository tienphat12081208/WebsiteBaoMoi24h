package com.webtiphadoan.service;

import com.webtiphadoan.model.Chuyen_Muc_Model;
import com.webtiphadoan.model.Trangthai_Model;
import com.webtiphadoan.repository.Chuyen_Muc_Repository;
import com.webtiphadoan.repository.Trangthai_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;



@Service
@Transactional
public class Trangthai_Servicelmpl implements Trangthai_Service {
    @Autowired
    Trangthai_Repository trangthai_repository;
    @Override
    public List<Trangthai_Model> SelectAll() {
        return (List<Trangthai_Model>) trangthai_repository.findAll();
    }

    @Override
    public Trangthai_Model GetTrangthai_ByID(int id)
    {
        return trangthai_repository.findById(id).get();
    }
    @Override
    public void Insert_Trangthai(int idnews,int trangthai)
    {
         trangthai_repository.Insert_Trangthai(idnews,trangthai);
    }
    @Override
    public void Delete_Trangthai(int idnews)
    {
        trangthai_repository.Delete_Trangthai(idnews);
    }
    @Override
    public void Update_Trangthai(int idnews)
    {
        trangthai_repository.Update_Trangthai(idnews);
    }


}
