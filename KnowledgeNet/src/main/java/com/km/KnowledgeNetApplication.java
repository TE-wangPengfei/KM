package com.km;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.km.config.DocumentSettings;

@SpringBootApplication
@EnableConfigurationProperties({DocumentSettings.class}) 
public class KnowledgeNetApplication {

	public static void main(String[] args) {
		SpringApplication.run(KnowledgeNetApplication.class, args);
	}
}
