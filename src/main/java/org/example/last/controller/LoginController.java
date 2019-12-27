package org.example.last.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

// 로그인 컨트롤러
@Controller
@RequestMapping("login")

public class LoginController {
	
	
	@RequestMapping("/dologin")
	@ResponseBody
	public String change()
	{
		String result = "SUCCESS";	
		return result;
	}

}
