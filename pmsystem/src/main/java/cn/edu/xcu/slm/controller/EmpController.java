package cn.edu.xcu.slm.controller;


import java.awt.print.Book;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.velocity.shaded.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ResourceUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import cn.edu.xcu.slm.entity.Emp;
import cn.edu.xcu.slm.service.IEmpService;

/**
 * <p>
 * InnoDB free: 3072 kB; (`tid`) REFER `xcxy/t_dept`(`id`) 前端控制器
 * </p>
 *
 * @author nychenggu
 * @since 2019-11-15
 */
@RestController
@RequestMapping("/emp")
public class EmpController {
	@Autowired
	private IEmpService iEmpService;	
	
	@RequestMapping("/list")
	public IPage<Emp> list(
			@RequestParam(defaultValue = "",required = false) String ename,
			@RequestParam(defaultValue = "-1",required = false) int tid,
			@RequestParam(defaultValue = "1",required = false) int page,
			@RequestParam(defaultValue = "2",required = false) int limit){
		IPage<Emp> toWichPage=new Page<Emp>(page,limit);
		QueryWrapper<Emp> wrapper=new QueryWrapper<>();
		if(StringUtils.hasText(ename)) {
			wrapper.like("ename", ename);
		}
		if(tid!=-1) {
			wrapper.eq("tid", tid);
		}
		IPage<Emp> resultPage=iEmpService.page(toWichPage,wrapper);
		
		return resultPage;
	}
	
	@RequestMapping("/deleteEmp")
	public Map<String, Object> doDelete(Integer id) {
		Map<String, Object> result=new HashMap<>();
		boolean ret=iEmpService.removeById(id);
		if(ret) {
			result.put("msg","删除成功");
			result.put("code",1);
		}else {
			result.put("msg","删除失败");
			result.put("code",-1);
		}
		return result;
	}
	@RequestMapping("/upload")
	public Map<String,Object> doUpload(MultipartFile photox){
		Map<String, Object> result=new HashMap<>();
		try {
			if(!photox.isEmpty()) {
				String newFileName=UUID.randomUUID()+"."+FilenameUtils.getExtension(photox.getOriginalFilename());
				photox.transferTo(new File(ResourceUtils.getFile("classpath:static/upload")+"/"+newFileName));
				result.put("newFileName", newFileName);
			}
			result.put("code", 0);
		} catch (Exception e) {
			result.put("code", -1);
			result.put("msg", "上传失败");
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("/update")
	public Map<String,Object> update(Emp emp){
		Map<String, Object> result=new HashMap<>();
		System.out.println(emp);
		boolean ret=iEmpService.saveOrUpdate(emp);
		if(ret) {
			result.put("code",0);
		}else {
			result.put("code",-1);
			result.put("msg","更新失败");
		}	
		return result;
	}
}

