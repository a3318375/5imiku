package com.yuxh.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;

/**
 * Created by TWCX on 2016/10/21.
 */
@RequestMapping("/uploadFile")
@Controller
public class DownloadController {

    @RequestMapping(value = "/img",method= RequestMethod.POST)
    @ResponseBody
    public String  fileUpload2(@RequestParam("myFileName") CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        long  startTime=System.currentTimeMillis();
        System.out.println("fileName："+file.getOriginalFilename());
        String path="D:/ideaproject/myblog/target/myblog/upload/" + file.getOriginalFilename();
        File newFile1=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile1);

        long  endTime=System.currentTimeMillis();
        System.out.println("方法二的运行时间："+String.valueOf(endTime-startTime)+"ms");
        return request.getContextPath()+"/upload/"+file.getOriginalFilename();
    }

}
