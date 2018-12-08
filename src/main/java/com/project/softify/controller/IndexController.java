package com.project.softify.controller;

import com.project.softify.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @Autowired
    EventService eventService;

    @RequestMapping("/index")
    public String index(Model model){
        model.addAttribute("events",eventService.findAll());
        return "index";
    }
}
