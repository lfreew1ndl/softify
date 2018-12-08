package com.project.softify.controller;

import com.project.softify.service.EstablishmentService;
import com.project.softify.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

    @Autowired
    EventService eventService;

    @Autowired
    EstablishmentService establishmentService;

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("events",eventService.findAll());
        model.addAttribute("comp",establishmentService.findAll());
        return "index";
    }
}
