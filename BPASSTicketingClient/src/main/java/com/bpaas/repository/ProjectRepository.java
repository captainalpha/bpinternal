package com.bpaas.repository;

import com.bpaas.models.Projects;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectRepository extends JpaRepository<Projects, Long> {

    String findPrefixByProjectID(Long id);
}
