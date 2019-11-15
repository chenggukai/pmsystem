package cn.edu.xcu.slm.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.xcu.slm.entity.Dept;
import cn.edu.xcu.slm.service.IDeptService;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author nychenggu
 * @since 2019-11-15
 */
@Controller
@RequestMapping("/dept")
public class DeptController {
	@Autowired
	private IDeptService iDeptService;
	@RequestMapping("/findAll")
	@ResponseBody
	public List<Dept> findAll(){
		return iDeptService.list();
	} 
}

