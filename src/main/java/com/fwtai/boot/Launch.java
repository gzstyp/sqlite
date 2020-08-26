package com.fwtai.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.ErrorMvcAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan({"com.fwtai"})
@SpringBootApplication(exclude = {ErrorMvcAutoConfiguration.class})//排除,移开
public class Launch extends SpringBootServletInitializer {

    public static void main(final String[] args) throws Exception {
        SpringApplication.run(Launch.class,args);
        System.out.println("应用启动成功");
    }

    @Override
    protected SpringApplicationBuilder configure(final SpringApplicationBuilder builder) {
        return builder.sources(Launch.class);
    }
}