package com.bpaas.models;

import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "TICKET_DETAILS")
@NamedQueries({
    @NamedQuery(name = "TicketDetails.findCountByProjectId", query = "select count(*) from TicketDetails t where t.projectId = :projectId"),
    @NamedQuery(name = "TicketDetails.findByUserIdFive", query = "select t from TicketDetails t where t.raisedBy = :raisedBy ORDER BY t.raisedOn DESC")
})

public class TicketDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    
    private String ticketStauts = "Pending For Acknowledgement";
    private String ticketInstanceId;
    private String title;
    private String raisedBy;
    private int priority;
    private Date raisedOn = new Date();
    private String contactEmail;
    private String contactMobile;
    private String detailedDiscription;
    private Long projectId;

    public String getTicketStauts() {
        return ticketStauts;
    }

    public void setTicketStauts(String ticketStauts) {
        this.ticketStauts = ticketStauts;
    }

    public String getTicketInstanceId() {
        return ticketInstanceId;
    }

    public void setTicketInstanceId(String ticketInstanceId) {
        this.ticketInstanceId = ticketInstanceId;
    }

    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRaisedBy() {
        return raisedBy;
    }

    public void setRaisedBy(String username) {
        this.raisedBy = username;
    }

//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public Date getRaisedOn() {
        return raisedOn;
    }

    public void setRaisedOn(Date raisedOn) {
        this.raisedOn = raisedOn;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactMobile() {
        return contactMobile;
    }

    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile;
    }

    public String getDetailedDiscription() {
        return detailedDiscription;
    }

    public void setDetailedDiscription(String detailedDiscription) {
        this.detailedDiscription = detailedDiscription;
    }

}
