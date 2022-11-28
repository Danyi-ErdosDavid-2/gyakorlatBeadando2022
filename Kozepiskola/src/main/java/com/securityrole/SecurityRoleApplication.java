package com.securityrole;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.securityrole", "com.kozepiskola"})
public class SecurityRoleApplication {

    public static void main(String[] args) {
        SpringApplication.run(SecurityRoleApplication.class, args);
    }

}
