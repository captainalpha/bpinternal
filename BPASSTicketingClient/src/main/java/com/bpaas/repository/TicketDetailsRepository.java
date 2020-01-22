package com.bpaas.repository;

import com.bpaas.models.TicketDetails;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TicketDetailsRepository extends JpaRepository<TicketDetails, Long> {
    
    Long findCountByProjectId(Long projectId);
    List<?> findByUserIdFive(String raisedBy);
    
}
