package com.project.softify.service;

import com.project.softify.model.Establishment;
import com.project.softify.repository.EstablishmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EstablishmentServiceImpl implements EstablishmentService{

    @Autowired
    public EstablishmentRepository repository;

    @Override
    public void save(Establishment user) {
        repository.save(user);
    }

    @Override
    public Optional<Establishment> findById(long id) {
        return repository.findById(id);
    }

    @Override
    public List<Establishment> findAll() {
        return repository.findAll();
    }
}
