package com.yuxh.blog.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by yuxh on 2017/3/21.
 */
public class DateUtils {

    public static String get8Date() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        return sdf.format(new Date());
    }
}
