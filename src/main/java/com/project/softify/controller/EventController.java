package com.project.softify.controller;

import com.project.softify.model.Establishment;
import com.project.softify.model.Event;
import com.project.softify.service.EstablishmentService;
import com.project.softify.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/event")
public class EventController {

    @Autowired
    EventService eventService;

    @Autowired
    EstablishmentService establishmentService;

    @PostMapping
    public String addEvent(Event event,String date1){
        System.out.println(date1);
        event.setDate(LocalDateTime.parse(date1, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm")));
        eventService.save(event);
        return "index";
    }

    @GetMapping
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    public String addEvent(Model model){
        model.addAttribute("establishment",establishmentService.findAll());
        return "eventpage";
    }

}
