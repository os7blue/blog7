package com.os7blue.blog7.service.manager;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

/**
  * @Description:    用户发送电子邮件通知
  * @Author:         zsm
  * @CreateDate:     Create by 19-2-9 上午12:16
  * @UpdateUser:     zsm
  * @UpdateDate:     Update by 19-2-9 上午12:16
  * @UpdateRemark:   修改内容
  * @Version:        1.0
*/
@Service
public class SendEmailService {

    /**
     * 发送方的标识
     */
    @Value("${spring.mail.username}")
    private String from;
    /**
     * spring boot提供发送邮件接口
     */
    @Autowired
    private JavaMailSender sender;


    /**
     * 发送一封只包含文本信息的电子邮件
     *
     * @param toEmail 收件人电子邮箱地址
     * @param title   邮件标题
     * @param content 邮件内容
     */
    @Async
    public void sendMail(String toEmail, String title, String content) {

        //创建一封简单的电子邮件对象.
        SimpleMailMessage message = new SimpleMailMessage();
        //发送者
        message.setFrom(from);
        //接受者
        message.setTo(toEmail);
        //发送标题
        message.setSubject(title);
        //发送内容
        message.setText(content);
        sender.send(message);
    }

}
