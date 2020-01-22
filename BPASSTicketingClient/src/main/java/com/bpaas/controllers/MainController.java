package com.bpaas.controllers;

import ch.qos.logback.core.CoreConstants;
import com.bpaas.models.TicketDetails;
import com.bpaas.models.User;
import com.bpaas.repository.TicketDetailsRepository;
import com.bpaas.service.SecurityService;
import com.bpaas.service.UserService;
import com.bpass.validator.UserValidator;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bpaas.repository.ProjectRepository;

@Controller
//@RequestMapping("*")

public class MainController {

    @Autowired
    private UserService userService;
    @Autowired
    private SecurityService securityService;
    @Autowired
    private UserValidator userValidator;
    @Autowired
    private TicketDetailsRepository ticketDetailsRepo;
    @Autowired
    private ProjectRepository projectPrefixRepo;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @GetMapping({"/", "/dashboard"})
    public String dashboard(Model model, Principal principal) {

        List<TicketDetails> tickeList = new ArrayList<TicketDetails>();
        List<TicketDetails> ticketDetList = (List<TicketDetails>) ticketDetailsRepo.findByUserIdFive(principal.getName());

        for (int i = 0; i < ticketDetList.size(); i++) {
            tickeList.add(ticketDetList.get(i));
            if (i == 4) {
                break;
            }
            System.out.println("ticketDetList ID : " + ticketDetList.get(i).getTicketInstanceId());
        }
        model.addAttribute("ticketDetList", tickeList);
        model.addAttribute("userForm", new User());

        return "dashboard";
    }

    @RequestMapping(value = "/raiseTicketAjax", method = RequestMethod.GET)
    @ResponseBody
    public String raiseTicketAjax(TicketDetails ticketDetails) {
        System.out.println("ticketDetails  " + ticketDetails.getContactMobile());;

        Long ticketCount = ticketDetailsRepo.findCountByProjectId(ticketDetails.getProjectId());
        System.out.println("maximum count :" + ticketCount);

        String projectPrifix = projectPrefixRepo.findPrefixByProjectID(ticketDetails.getProjectId());
        System.out.println("Project projectPrifix :: " + projectPrifix);

        String ticketId = projectPrifix + "-" + ticketCount;
        System.out.println("Ticket ID :: " + ticketId);

        ticketDetails.setTicketInstanceId(ticketId);

        ticketDetailsRepo.save(ticketDetails);
        JSONObject response = new JSONObject();

        response.put("status", "Sucess");
        response.put("ticketId", ticketId);

        return response.toString();
    }

    @GetMapping("/raiseTicket")
    public String raiseTicket(Model model) {
//        model.addAttribute("userForm", new User());

        return "raiseTicket";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/dashboard";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Your username and password is invalid.");
        }

        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully.");
        }

        return "loginOld";
    }

    @GetMapping({"/welcome"})
    public String welcome(Model model) {
        return "welcome";
    }

    @GetMapping("/raiseNewTicket")
    public String raiseNewTicket() {
        System.out.println("axc vvcxdmin=================");

        return "raiseTicket";
    }

    @GetMapping("/header")
    public String header() {
        System.out.println("----- Coming in Header -----");
        return "/common/header";
    }

    @GetMapping("/slidebar")
    public String slidebar() {
        System.out.println("----- Coming in Slidebar ----- ");
        return "/common/slidebar";
    }

    @GetMapping("/allTickets")
    public String allTickets() {
        System.out.println("----- Coming in Slidebar ----- ");
        return "allTickets";
    }

    @GetMapping("/getAllTicketsAjax")
    @ResponseBody
    public String getAllTicketsAjax(Principal principal) {

        List<TicketDetails> ticketDetList = (List<TicketDetails>) ticketDetailsRepo.findByUserIdFive(principal.getName());
        JSONArray jsonArray = new JSONArray(ticketDetList);

        System.out.println("--_- Coming in getAllTicketsAjax ----- ");
        return jsonArray.toString();
    }

}
