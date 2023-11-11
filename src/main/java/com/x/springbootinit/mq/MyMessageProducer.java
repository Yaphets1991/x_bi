package com.x.springbootinit.mq;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * @author:xiang
 * @date 2023/11/11 0:18
 */
@Component
public class MyMessageProducer {

    @Resource
    private RabbitTemplate rabbitTemplate;

    public void sendMessage(String exchange,String routingKey,String message) {
        rabbitTemplate.convertAndSend(exchange,routingKey,message);
    }
}
