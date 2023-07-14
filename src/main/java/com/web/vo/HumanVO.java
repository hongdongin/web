package com.web.vo;

/**
 * 
 */
/**
 * @param args
 */
/**
 * 
 */
/**
 * 
 */
public class HumanVO {

	private int age;
	private String name;
	private String addr;

	public void setAge(int age) {
		this.age = age;
	}

	public int getAge() {
		return age;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	public String toString() {
		return "name" + name +", age=" + age+",addr=" + addr;
	}
	
}

class Excute {
	public static void main(String[] args) {
		HumanVO human = new HumanVO();
		human.setAge(10);
		human.setName("홍길동");
		human.setAddr("Seoul");
		System.out.println(human.getAge());
		
	}
}


