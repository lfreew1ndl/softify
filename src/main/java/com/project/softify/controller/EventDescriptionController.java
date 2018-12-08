package com.project.softify.controller;

import com.project.softify.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class EventDescriptionController {


    @Autowired
    public EventService service;


}
