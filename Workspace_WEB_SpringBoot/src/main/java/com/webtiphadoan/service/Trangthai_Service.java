package com.webtiphadoan.service;
import com.webtiphadoan.model.Trangthai_Model;

import java.util.List;

public interface Trangthai_Service{
    List<Trangthai_Model> SelectAll();
    Trangthai_Model GetTrangthai_ByID(int id);
    void  Insert_Trangthai(int idnews,int trangthai);
    void  Delete_Trangthai(int idnews);
    void  Update_Trangthai(int idnews) ;
}
