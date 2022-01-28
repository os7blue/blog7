package com.os7blue.blog7.util;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.UUID;

/**
 * @Description:    一些简单的工具集合
 * @Author:         os7blue
 * @CreateDate:     Create by 2018/9/15 23:15
 * @UpdateUser:     os7blue
 * @UpdateDate:     Update by 2018/9/15 23:15
 * @UpdateRemark:   
 * @Version:        1.0
 */
public class BaseUtils {

    /**
     * 获取32位uuid
     * @return
     */
    public static String getUUID(){
        return UUID.randomUUID().toString().replace("-","");
    }

    /**
     * 获取用户真实IP地址，有可能用户使用了代理软件方式避免真实IP地址,所以不使用request.getRemoteAddr();
     *
     * 可是，如果通过了多级反向代理的话，X-Forwarded-For的值并不止一个，而是一串IP值，究竟哪个才是真正的用户端的真实IP呢？
     * 答案是取X-Forwarded-For中第一个非unknown的有效IP字符串。
     *
     * 无法获取ss等手段代理过的真实ip，原因你懂的。
     *
     * 如：X-Forwarded-For：192.168.1.111, 192.168.1.122, 192.168.1.133,
     * 192.168.1.111
     *
     * 用户真实IP为： 192.168.1.111
     */
    public static String getIpAddress(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }

    /**
     * 根据访问者ip获取详细信息，如访问者所在省市地区，服务商等。使用淘宝的接口
     * @param ipAddress
     * @return
     */
    public static String getIpMessage(String ipAddress){
        String result ="";
        BufferedReader read=null;
        try {
            URL url = new URL("http://ip.taobao.com/service/getIpInfo.php?ip="+ipAddress);
            URLConnection connection = url.openConnection();
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            connection.connect();
            // 定义 BufferedReader输入流来读取URL的响应
            read = new BufferedReader(new InputStreamReader(
                    connection.getInputStream(),"UTF-8"));
            String line;//循环读取
            while ((line = read.readLine()) != null) {
                result += line;
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return "";
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }finally {
            if (read!=null){
                try {
                    read.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }
}
