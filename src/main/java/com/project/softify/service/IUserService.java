package com.project.softify.service;

import com.project.softify.model.User;

import java.util.List;
import java.util.Optional;

public interface IUserService {
    List<User> findAll();

    void save(User user);

    void deleteById(int id);

    boolean existsById(int id);

    Optional<User> findById(int id);
}
