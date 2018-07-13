package com.xinzhen.config;

import lombok.Data;
import lombok.ToString;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@ConfigurationProperties
@Data
@ToString
@Component("fundProperties")
public class FundProperties {

	@Value("${spring.datasource.url}")
	private String datasourceUrl;


}
