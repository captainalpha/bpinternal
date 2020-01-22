package com.bpaas.ticketing;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(TicketingApplication.class);
    }

    public ServletInitializer() {
        super();
        setRegisterErrorPageFilter(false); // <- this one
    }

}
