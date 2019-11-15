package cn.edu.xcu.slm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PeopleController {
	@RequestMapping("/people")
	public String toPeople() {
		return "people";
	}
}
