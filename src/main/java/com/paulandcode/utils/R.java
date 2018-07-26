package com.paulandcode.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 返回数据
 * @author paulandcode
 * @date 2017年9月19日 下午2:09:05
 */
public class R extends HashMap<String, Object> {
	
	private static final long serialVersionUID = 1L;
	
	public R() {
		put("code", 1);
	}
	
	public static R error() {
		return error(0, "未知异常,请联系管理员.");
	}
	
	public static R error(String message) {
		return error(0, message);
	}
	
	public static R error(int code, String message) {
		R r = new R();
		r.put("code", code);
		r.put("message", message);
		return r;
	}
	
	public R remove(String key){
		super.remove(key);
		return this;
	}

	public static R ok(String message) {
		R r = new R();
		r.put("message", message);
		return r;
	}
	
	public static R ok(Map<String, Object> map) {
		R r = new R();
		r.putAll(map);
		return r;
	}
	
	public static R ok() {
		return new R();
	}

	@Override
	public R put(String key, Object value) {
		super.put(key, value);
		return this;
	}
}