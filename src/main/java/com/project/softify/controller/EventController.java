package com.project.softify.controller;

import com.project.softify.model.Event;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EventController {


    @RequestMapping("/addEvent")
    public void addEvent(Event event){

    }

}
