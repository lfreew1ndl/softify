package com.project.softify.controller;

import com.project.softify.model.Event;
import com.project.softify.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventController {

    @Autowired
    EventService eventService;

    @RequestMapping("/addEvent")
    public void addEvent(@RequestBody Event event){
        eventService.save(event);
    }


    @RequestMapping("/eventDesc")
    public String eventDescription(Model model, @RequestParam long id){
        ModelAndView modelAndView = new ModelAndView();
        model.addAttribute("event", eventService.findById(id).orElse(null));
        return "event";
    }
}
