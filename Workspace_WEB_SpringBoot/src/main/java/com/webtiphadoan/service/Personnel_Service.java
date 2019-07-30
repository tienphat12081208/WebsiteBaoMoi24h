package com.webtiphadoan.service;

import com.webtiphadoan.model.Personnel_Model;

import  java.util.List;

public interface Personnel_Service {

    List<Personnel_Model> getPersonnelByName(String name);

    public List<Personnel_Model> getAllArticles();

    public Personnel_Model getArticleById(int id);

    public void saveOrUpdate(Personnel_Model personnel_model);

    public void deleteArticle(int id);


}