package com.spring.boot.jsp.page.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.spring.boot.jsp.page.model.Patient;
import com.spring.boot.jsp.page.repository.PatientRepository;

@SpringBootApplication
@ComponentScan(basePackages={"com.spring.boot.jsp.page"})
@EnableJpaRepositories("com.spring.boot.jsp.page.repository") 
@EntityScan("com.spring.boot.jsp.page.*")   
public class ApplicationMain {

    public static void main(String[] args) {
    	SpringApplication.run(ApplicationMain.class, args);
    }

}
