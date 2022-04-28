package com.mysite.jts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

    @RequestMapping("/jts")
    @ResponseBody
    public String index() {
        return "안녕하세요 jts에 오신 걸 환영합니다";
    }

    @RequestMapping("/")
    public String root() {
//        forward는 루트값을 그대로 가진채 해당 주소로 이동
//        return "forward:/question/list";

        return "redirect:/question/list";

    }
}
