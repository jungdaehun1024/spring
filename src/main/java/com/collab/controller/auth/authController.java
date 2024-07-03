package com.collab.controller.auth;

import com.collab.controller.ExceptionController;
import com.collab.service.MeetingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class authController  extends ExceptionController {

    @Autowired
    private MeetingService meetingService;
    //마이페이지
    @RequestMapping(value="/myPage" ,method = RequestMethod.GET)
    public String myPage(){
        return "myPage/myPage";
    }

    //마이페이지 Likes화면
    @RequestMapping(value="/myPage/likes" ,method = RequestMethod.GET)
    public String myLikes(Model model)throws Exception{
        model.addAttribute("likesList", meetingService.likesList());
        return "myPage/likesPage";
    }

    //회원가입
    @RequestMapping(value="/login/join" ,method = RequestMethod.GET)
    public String join(){
        return "login/join";
    }

    //로그인
    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public String loginForm(){
        return "login/login";
    }

    //회원가입 폼(join Info)
    @RequestMapping(value="/login/joinInfo" ,method = RequestMethod.GET)
    public String joinInfo(){
        return "login/joinInfo";
    }
}
