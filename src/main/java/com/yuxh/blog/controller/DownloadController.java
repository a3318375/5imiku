package com.yuxh.blog.controller;

import com.yuxh.blog.util.DateUtils;
import com.yuxh.blog.util.ResultUtils;
import com.yuxh.blog.util.Toolkits;
import com.yuxh.blog.util.UUIDUtils;
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
        String path="D:/code/ideaproject/5imiku/src/main/webapp/upload/" + file.getOriginalFilename();
        File newFile1=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile1);

        long  endTime=System.currentTimeMillis();
        System.out.println("方法二的运行时间："+String.valueOf(endTime-startTime)+"ms");
        return request.getContextPath()+"/upload/"+file.getOriginalFilename();
    }


    @RequestMapping(value = "/cover",method= RequestMethod.POST)
    @ResponseBody
    public String  cover(@RequestParam("myFileName") CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        String uuid = UUIDUtils.getUUID36();
        String filename = uuid + file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
        String date  = DateUtils.get8Date();
        String path = Toolkits.getPath() + "cover/" + date + "/" ;
        String name = path + filename;

        File filedir = new File(path);
        if(!filedir.exists()){
            filedir.mkdirs();
        }
        filedir = new File(name);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(filedir);
        String str = ResultUtils.getUploadResult("/upload/cover/" + date + "/" + filename,uuid);
        return str;
    }
}
