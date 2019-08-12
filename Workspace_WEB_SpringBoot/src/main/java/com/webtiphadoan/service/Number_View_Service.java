package com.webtiphadoan.service;

import com.webtiphadoan.model.Number_View_Model;

public interface Number_View_Service {
    void saveOrUpdate(Number_View_Model number_view_model);
    Number_View_Model GetNumber_Views(int id);

}
