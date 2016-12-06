package com.love.servlet.email;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.love.beanCl.TestCl;
import com.love.servlet.BasicServlet;
public class CheckEmailServlet extends BasicServlet {
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			//获取前台传来的邮箱
			String email = request.getParameter("email");
			System.out.println(email);
			if(email!=null||email!=""||!email.equals("该邮箱已被其他用户绑定")){
				int num = new TestCl().findUser02(email);
				//将后台数据回写到前台页面靠的是out这个方法
				this.out(response,num);
				//为前台页面在xml中设置访问路径(虚拟目录)
			}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			this.doGet(req,resp);
	}
}
