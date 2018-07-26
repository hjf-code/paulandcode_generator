package com.paulandcode.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.paulandcode.service.SysGeneratorService;

/**
 * 代码生成器
 *
 * @author paulandcode
 * @email paulandcode@gmail.com	
 * @date 2017年12月2日 下午12:37:54
 */
@Controller
public class SysGeneratorController {
	@Autowired
	private SysGeneratorService sysGeneratorService;
	
	/**
	 * 列表
	 */
	@RequestMapping("/")
	public String list(Model model, @RequestParam Map<String, Object> params){
		List<Map<String, Object>> list = sysGeneratorService.queryList(params);
		model.addAttribute("list", list);
		return "index";
	}
	
	/**
	 * 生成代码
	 */
	@RequestMapping("/generator")
	public void generator(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String[] tableNames = new String[]{};
		String tables = request.getParameter("tables");
		tableNames = JSON.parseArray(tables).toArray(tableNames);
		
		byte[] data = sysGeneratorService.generatorCode(tableNames);
		
		response.reset();  
        response.setHeader("Content-Disposition", "attachment; filename=\"code.zip\"");  
        response.addHeader("Content-Length", "" + data.length);  
        response.setContentType("application/octet-stream; charset=UTF-8");  
    
        IOUtils.write(data, response.getOutputStream());  
	}
	
}