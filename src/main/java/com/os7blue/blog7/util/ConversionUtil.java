package com.os7blue.blog7.util;


import javax.servlet.http.HttpServletRequest;
import java.security.MessageDigest;

/**
* @Description:    文本转换工具
* @Author:         os7blue
* @CreateDate:     2020/1/13 下午9:26
* @UpdateUser:     os7blue
* @UpdateDate:     2020/1/13 下午9:26
* @UpdateRemark:   
* @Version:        1.0
*/
public class ConversionUtil {

    /**
     * sha1加密
     * @return
     */
    public static String toSha1(String text){

        char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'a', 'b', 'c', 'd', 'e', 'f' };
        try {
            MessageDigest mdTemp = MessageDigest.getInstance("SHA1");
            mdTemp.update(text.getBytes("UTF-8"));
            byte[] md = mdTemp.digest();
            int j = md.length;
            char buf[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                buf[k++] = hexDigits[byte0 >>> 4 & 0xf];
                buf[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(buf);
        } catch (Exception e) {
            return null;
        }

    }

    //将接收到的微信xml信息转换成map
    public static void wechatXmlToMap(HttpServletRequest request) {
    }
}
