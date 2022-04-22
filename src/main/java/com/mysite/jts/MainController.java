package com.mysite.jts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

    @RequestMapping("/jts")
    @ResponseBody
    public String index() {
        return "안녕하세요 jts에 오신 걸 환영합니다.";
    }
}
