package com.project.softify.controller;

import com.project.softify.model.User;
import com.project.softify.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {

    private final
    UserService userService;

    @Autowired
    public MainController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String index(){
        userService.save(new User(null,"gdfgdf@mail.ru","fsgdfgd","dasd","dasd",null));
        return "index";
    }
}
