package com.ex.controller;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Calendar;

@Controller
@RequestMapping("/file")
public class FileController {

    Logger logger = LogManager.getLogger(FileController.class);

    @Resource
    ServletContext context;

    @RequestMapping(value = "/fileUpload")
    public void fileUpload(@RequestParam("uploadFile") MultipartFile[] file, HttpServletRequest request) throws Exception {

        for (MultipartFile multipartFile : file) {
            //判断文件是否为空
            if (!multipartFile.isEmpty()) {

                //获得原文件名
                String fileName = multipartFile.getOriginalFilename();
                logger.info(fileName);
                //File.separator表示在 UNIX 系统上，此字段的值为 /；在 Windows 系统上，它为 \，如：C:\tmp\test.txt和tmp/test.txt
                String filePath = context.getRealPath("") + "upload" + File.separator;
                //新建upload文件夹
                File upload = new File(filePath);
                if (!upload.exists()){
                    upload.mkdirs();
                }
                filePath += fileName;
                // 复制本地文件到服务器
                FileCopyUtils.copy(multipartFile.getBytes(), new File(filePath));

            } else {
                logger.error("文件上传异常");
            }
        }
    }
}
