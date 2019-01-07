package com.herbmall.test;

public class Person {
	// 싱글톤 패턴 - 인스턴스를 하나만 생성하는 디자인 패턴
	/* Person 클래스를 메모리에 한 번만 올리게 막는다 
	  [1] 생성자를 private로 => new연산자를 사용하여, 객체 생성 불가 
	  [2] get 메서드 만들기 
	  [3] 멤버변수로 Person을 담을 수 있는 instance 변수를 만든다.
	  		- static으로 지정해서 한 개만 만들어지게 한다 
	  */
	
	private static Person instance; //static 멤버변수
	//=> 클래스 차원에서 하나만 만들어지고, 모든 객체가 공유함
	
	//private 생성자
	private Person() {
	}
	
	//Person객체를 리턴하는 static 메서드 -한번만 리턴할 수 있게
	public static Person getinstance() {
		if(instance==null) {//null이라면 객체를 생성해라 
			instance=new Person();
		}
		
		return instance;
	}
	public void showInfo() {
		System.out.println("Person클래스의 showInfo()메서드!!");
	}
}
