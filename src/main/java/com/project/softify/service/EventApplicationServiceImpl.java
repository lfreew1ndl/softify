package com.project.softify.service;

import com.project.softify.model.EventApplication;
import com.project.softify.repository.EventApplicationRepository;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Optional;

public class EventApplicationServiceImpl implements EventApplicationService {

    @Autowired
    EventApplicationRepository repository;

    @Override
    public void save(EventApplication eventApplication) {
        repository.save(eventApplication);
    }

    @Override
    public Optional<EventApplication> findById(Long id) {
        return repository.findById(id);
    }

    @Override
    public EventApplication findByUsername(String username) {
        return repository.findByUserUsername(username);
    }
}
