package com.os7blue.blog7.listener;


import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

//@WebListener
public class OnlineUsersListener implements HttpSessionListener {

    private static int activeSessions = 0;
    //session创建时执行
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        activeSessions++;
        System.out.println("当前在线人数"+activeSessions);
    }
    //session销毁时执行
    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        if (activeSessions > 0) {
            activeSessions--;
            System.out.println("当前在线人数"+activeSessions);

        }
    }
    //获取活动的session个数(在线人数)
    public static int getActiveSessions() {
        return activeSessions;
    }
}
