package com.project.softify.service;

import com.project.softify.model.EventApplication;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public interface EventApplicationService {

    void save(EventApplication user);

    Optional<EventApplication> findById(Long id);

    EventApplication findByUsername(String username);
}
