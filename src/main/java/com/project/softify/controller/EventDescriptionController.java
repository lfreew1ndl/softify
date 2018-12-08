package com.project.softify.controller;

import com.project.softify.model.Event;
import com.project.softify.model.EventApplication;
import com.project.softify.service.EventApplicationService;
import com.project.softify.service.EventService;
import com.project.softify.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EventDescriptionController {


    @Autowired
    public EventApplicationService service;
    @Autowired
    public UserService userService;
    @Autowired
    public EventService eventService;


    @RequestMapping(value = "/apply",method = RequestMethod.GET)
    public String applyForEvent(@RequestParam Long id){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            String currentUserName = authentication.getName();
            EventApplication eventApplication = new EventApplication();

            Event event = eventService.findById(id).orElse(null);
            event.setSpace_amount(event.getSpace_amount() - 1);
            eventApplication.setUser(userService.findByUsername(currentUserName));
            eventApplication.setEvent(eventService.findById(id).orElse(null));
            service.save(eventApplication);
            eventService.save(event);
        }
        return "event";
    }
}
