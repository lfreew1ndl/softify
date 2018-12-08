package com.project.softify.repository;

import com.project.softify.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArticleRepository extends JpaRepository<Role, Long> {
    
}
