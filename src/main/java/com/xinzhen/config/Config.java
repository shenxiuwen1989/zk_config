package com.xinzhen.config;

import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Config {

    @RefreshScope
    @Bean(name = {"fundProperties"})
    public FundProperties fundProperties(){
        return new FundProperties();
    }
}
