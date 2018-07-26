package com.paulandcode.service;

import java.util.List;
import java.util.Map;

/**
 * 代码生成器
 *
 * @author paulandcode
 * @email paulandcode@gmail.com	
 * @date 2017年12月2日 下午1:55:04
 */
public interface SysGeneratorService {
	
	List<Map<String, Object>> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	Map<String, String> queryTable(String tableName);
	
	List<Map<String, String>> queryColumns(String tableName);
	
	/**
	 * 生成代码
	 */
	byte[] generatorCode(String[] tableNames);
}
