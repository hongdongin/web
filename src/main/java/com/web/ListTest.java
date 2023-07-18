package com.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ListTest {

	public static Object attribute;
	
	public static void forward(Map<String, String> map) {
		System.out.println(map.get("test2"));
	}
	
	public static void setAttribute(String key, Object value) {
		attribute = value;
	}
	
	public static Object getAttribute(String key) {
		return attribute;
	}
	
	public static void main(String[] args) {
		List<String> strList = new ArrayList<>();
		strList.add("hello");
		strList.add("we");
		strList.add("one");
		setAttribute("strList", strList);
		Object obj = getAttribute("strList");
		
		System.out.println(obj == strList);
		List<String> list = (List<String>)obj;
		System.out.println(list);
		
	}

}
