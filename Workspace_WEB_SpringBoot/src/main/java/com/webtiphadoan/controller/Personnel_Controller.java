package com.webtiphadoan.controller;


import com.webtiphadoan.model.Personnel_Model;
import com.webtiphadoan.model.Vaitro_Model;
import com.webtiphadoan.repository.Personnel_Repsository;
import com.webtiphadoan.service.Chuyenmuc_Service;
import com.webtiphadoan.service.Personnel_Service;
import com.webtiphadoan.service.Vaitro_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class Personnel_Controller {
    @Autowired
    Personnel_Service personnel_service;
    @Autowired
    Personnel_Repsository personnel_repsository;
    @Autowired
    Vaitro_Service vaitro_service;
    @Autowired
    Chuyenmuc_Service chuyenmuc_service;




    @RequestMapping(value = "/updateopersonnel/{id}", method = RequestMethod.GET)
    public ModelAndView Edit_Personnel(@PathVariable int id) {
        ModelAndView model = new ModelAndView();
        Personnel_Model personnel_model_EDIT = personnel_service.getArticleById(id);
        model.addObject("Personnel_Form", personnel_model_EDIT);
        model.setViewName("Admin_Them_NhanSu");
        return model;

    }

    @RequestMapping(value="/save_Personnel", method=RequestMethod.POST)
    public ModelAndView Save_Personnel(@ModelAttribute("Personnel_Form") Personnel_Model personnel_model) {
        personnel_service.saveOrUpdate(personnel_model);
        return new ModelAndView("redirect:/adminnhansu");
    }
    @RequestMapping(value="/delete_Personnel/{id}", method=RequestMethod.GET)
    public ModelAndView Delete_Perspnnel(@PathVariable("id") int id) {
        personnel_service.deleteArticle(id);

        return new ModelAndView("redirect:/adminnhansu");
    }


    @RequestMapping(value="/add_Personnel", method=RequestMethod.GET)
    public ModelAndView Add_Personnel() {
        ModelAndView model = new ModelAndView();
        Personnel_Model personnel_model=new Personnel_Model();
        model.addObject("Personnel_Form",personnel_model);
        model.setViewName("Admin_Them_NhanSu");
        return model;
    }




}
