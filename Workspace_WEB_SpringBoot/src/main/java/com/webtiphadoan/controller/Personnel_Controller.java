package com.webtiphadoan.controller;


import com.webtiphadoan.model.Personnel_Model;
import com.webtiphadoan.model.Vaitro_Model;
import com.webtiphadoan.repository.Personnel_Repsository;
import com.webtiphadoan.repository.Vaitro_Repositoty;
import com.webtiphadoan.service.Personnel_Service;
import com.webtiphadoan.service.Vaitro_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class Personnel_Controller {
    @Autowired
    Personnel_Service personnel_service;
    @Autowired
    Personnel_Repsository personnel_repsository;
    @Autowired
    Vaitro_Service vaitro_service;


    @RequestMapping(value = "/personnel", method = RequestMethod.GET)
    public ModelAndView Personne_List(@ModelAttribute("personnel_form") Personnel_Model personnel_model) {

            ModelAndView model = new ModelAndView("Personnel_Page");

            if (personnel_model.getName() == null) {
                personnel_model.setName("");
            }
            List<Personnel_Model> personnel_model_List = personnel_service.getPersonnelByName(personnel_model.getName());
            model.addObject("obj_personnel_list", personnel_model_List);
            List<Vaitro_Model> vaitro_models= vaitro_service.GetALLvaitro();
            model.addObject("vaitro_OBJ", vaitro_models);
            return model;


    }

    @RequestMapping(value = "/updateopersonnel/{id}", method = RequestMethod.GET)
    public ModelAndView Edit_Personnel(@PathVariable int id) {
        ModelAndView model = new ModelAndView();

        Personnel_Model personnel_model_EDIT = personnel_service.getArticleById(id);
        model.addObject("Personnel_Form", personnel_model_EDIT);
        model.setViewName("List_Personnel");

        return model;

    }

    @RequestMapping(value="/save_Personnel", method=RequestMethod.POST)
    public ModelAndView Save_Personnel(@ModelAttribute("Personnel_Form") Personnel_Model personnel_model) {
        personnel_service.saveOrUpdate(personnel_model);
        return new ModelAndView("redirect:/personnel");
    }
    @RequestMapping(value="/delete_Personnel/{id}", method=RequestMethod.GET)
    public ModelAndView Delete_Perspnnel(@PathVariable("id") int id) {
        personnel_service.deleteArticle(id);

        return new ModelAndView("redirect:/personnel");
    }


    @RequestMapping(value="/add_Personnel", method=RequestMethod.GET)
    public ModelAndView Add_Personnel() {
        ModelAndView model = new ModelAndView();
        Personnel_Model personnel_model=new Personnel_Model();
        model.addObject("Personnel_Form",personnel_model);
        model.setViewName("List_Personnel");
        return model;
    }




}
