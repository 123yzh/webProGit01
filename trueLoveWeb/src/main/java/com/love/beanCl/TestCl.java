package com.love.beanCl;
//模拟数据库查询
public class TestCl {
	public int findUser(String phone){
		int num=0;
		if(phone.equals("15273835629")){
			num=1;
		}
		return num;
	}
	public int findUser02(String email){
		int num=0;
		if(email.equals("2108745938@qq.com")){
			num=1;
		}
		return num;
	}
}
