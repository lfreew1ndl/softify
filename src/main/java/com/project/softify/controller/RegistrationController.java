package com.project.softify.controller;

import com.project.softify.dto.RegistrationDto;
import com.project.softify.model.User;
import com.project.softify.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/register")
public class RegistrationController {

    public final UserService userService;

    @Autowired
    public RegistrationController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping
    public String register(@ModelAttribute("user")RegistrationDto dto){

        System.out.println("REGISTRATION OK");

        User user = new User();
        user.setFirstName(dto.getFirstName());
        user.setLastName(dto.getLastName());
        user.setEmail(dto.getEmail());
        user.setPassword(dto.getPassword());

        userService.save(user);
        return "redirect:/registration?success";

    }
}
