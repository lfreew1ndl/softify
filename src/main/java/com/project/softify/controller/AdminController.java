package com.project.softify.controller;

import com.project.softify.model.Establishment;
import com.project.softify.service.EstablishmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

    @Autowired
    public EstablishmentService establishmentService;

    //@PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/adminPage", method = RequestMethod.GET)
    public String adminPage(Model model){
        return "admin-page";
    }

    //@PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(value = "/adminPage", method = RequestMethod.POST)
    public String addEstablishment(@RequestBody Establishment establishment){
        establishmentService.save(establishment);
        return "admin-page";
    }
}
