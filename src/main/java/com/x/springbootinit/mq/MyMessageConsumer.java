package com.x.springbootinit.mq;

import com.rabbitmq.client.Channel;
import org.springframework.messaging.handler.annotation.Header;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.stereotype.Component;


/**
 * @author:xiang
 * @date 2023/11/11 0:21
 */
@Component
@Slf4j
public class MyMessageConsumer {

    //指定程序监听的消息队列和确认机制
    @SneakyThrows
    @RabbitListener(queues = {"code_queue"},ackMode = "MANUAL")
    public void receiveMessage(String message, Channel channel,@Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag){
        log.info("receiveMessage = {}",message);
        channel.basicAck(deliveryTag,false);
    }
}
