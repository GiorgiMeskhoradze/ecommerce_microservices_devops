package com.ibatulanand.discoveryserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class DiscoveryServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(DiscoveryServerApplication.class, args);
    }
}
// trigger build
// trigger
// ci test 2
// trigger rebuild 1787644915
// retry with sonar fix 1787645169
// retry with java version fix 1787645337
// retry with java version fix 1787645460
// retry sonar auth fix 1787645781
// debug run 1787646107
// debug retest 1787646301
// full pipeline test 1787646368
// full pipeline run 1787646405
// disable auto analysis test 1787646599
// final full run 1787646679
// final full run 1787648185
