package org.example.last.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// 뷰 전환 컨트롤러
@Controller
public class ViewController {
	
	@RequestMapping("login.do")
	public String loginDo()
	{
		return "login/login";
	}

}
