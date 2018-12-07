package com.project.softify.service;

import com.project.softify.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
