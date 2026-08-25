package com.ibatulanand.notificationservice;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.kafka.annotation.KafkaListener;

@SpringBootApplication
@Slf4j
public class NotificationServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(NotificationServiceApplication.class, args);
    }

    @KafkaListener(topics = "notificationTopic")
    public void handleNotification(OrderPlacedEvent orderPlacedEvent) {
        // Send out an email notification
        log.info("Received Notification for Order - {}", orderPlacedEvent.getOrderNumber());
    }
}
// trigger
// trigger 2
// trigger sequence test
// trigger sequence test 2
// final retry-loop test
// trigger rebuild 1787644924
// retry with sonar fix 1787645178
// retry with java version fix 1787645346
// retry with java version fix 1787645473
// full pipeline run 1787646417
// final full run 1787646693
// path fix retry 1787647095
// lombok fix retry
// skip tests fix
