package com.webtiphadoan.service;

import java.util.List;

import com.webtiphadoan.model.Personnel_Model;
import com.webtiphadoan.repository.Personnel_Repsository;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;
 import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class Personnel_Servicelmpl implements Personnel_Service {

    @Autowired
    Personnel_Repsository personnel_repsository;

    @Override
    public List<Personnel_Model> getAllArticles() {
        return (List<Personnel_Model>) personnel_repsository.findAll();
    }
    @Override
    public List<Personnel_Model> getPersonnelByName(String ten) {
        return personnel_repsository.Find_Personnel(ten);
    }


    @Override
    public Personnel_Model getArticleById(int id) {
        return personnel_repsository.findById(id).get();
    }

    @Override
    public void saveOrUpdate(Personnel_Model personnel_model) {
        personnel_repsository.save(personnel_model);
    }

    @Override
    public void deleteArticle(int id) {
        personnel_repsository.deleteById(id);
    }

}