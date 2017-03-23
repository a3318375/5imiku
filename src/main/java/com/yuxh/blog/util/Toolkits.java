package com.yuxh.blog.util;

/**
 * Created by Lenovo on 2017/3/23.
 */
public class Toolkits {

    public static String getPath(){
        String path = UUIDUtils.class.getResource("/").toString();
        path = path.substring(0,path.indexOf("classes/main"));
        path = path + "libs/exploded/5imiku-1.0-SNAPSHOT.war/upload/";
        return path;
    }
}
