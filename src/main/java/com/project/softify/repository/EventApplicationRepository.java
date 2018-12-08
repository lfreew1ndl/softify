package com.project.softify.repository;

import com.project.softify.model.EventApplication;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventApplicationRepository extends JpaRepository<EventApplication, Long> {
    EventApplication findByUserUsername(String username);
}
