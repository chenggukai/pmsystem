package cn.edu.xcu.slm.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class ErrorControler {
	@RequestMapping("/404")
public String name() {
	return "404";
	
}
}
