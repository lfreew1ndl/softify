package com.project.softify.service;

import com.project.softify.model.Event;

import java.util.List;
import java.util.Optional;

public interface EventService {
    void save(Event event);

    void deleteById(long id);

    List<Event> findAll();

    Optional<Event> findById(long id);
}
