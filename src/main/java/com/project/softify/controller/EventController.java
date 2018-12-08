package com.project.softify.controller;

import com.project.softify.model.Event;
import com.project.softify.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EventController {

    @Autowired
    EventService eventService;

    @RequestMapping("/addEvent")
    public void addEvent(Event event){

    }

}
