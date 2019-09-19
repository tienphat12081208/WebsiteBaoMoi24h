package com.webtiphadoan.service;


import com.webtiphadoan.model.Comment_Model;
import com.webtiphadoan.repository.Chuyen_Muc_Repository;
import com.webtiphadoan.repository.Comment_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class Comment_ServiceImpl implements Comment_Service {
    @Autowired
    Comment_Repository comment_repository;
    @Override
    public List<Comment_Model> ALL_Comment_For_News(int id) {
        return comment_repository.ALL_Comment_For_News(id);
    }



}

