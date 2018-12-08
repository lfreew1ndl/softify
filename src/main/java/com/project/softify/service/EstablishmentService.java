package com.project.softify.service;

import com.project.softify.model.Establishment;

import java.util.List;
import java.util.Optional;

public interface EstablishmentService {

    void save(Establishment user);

    Optional<Establishment> findById(long id);

    List<Establishment> findAll();
}
