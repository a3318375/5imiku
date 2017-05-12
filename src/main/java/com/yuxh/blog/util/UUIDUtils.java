package com.yuxh.blog.util;

import java.util.UUID;

public class UUIDUtils {

	public static String getUUID36(){
		UUID uuid = UUID.randomUUID();
        return uuid.toString();
	}

	public static String getUUID16(){
		UUID uuid = UUID.randomUUID();
        return uuid.toString().replaceAll("-", "").substring(9, 25);
	}

	public static String getUUID16(String uuid){
        return uuid.replaceAll("-", "").substring(9, 25);
	}
	
	public static String getUUID32(){
		UUID uuid = UUID.randomUUID();
        return uuid.toString().replaceAll("-", "");
	}
}
