package com.love.servlet.telphone;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.love.beanCl.TestCl;
import com.love.servlet.BasicServlet;
public class CheckPhoneServlet extends BasicServlet {
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			//将后台数据回写到前台页面靠的是out这个方法
			String telphone=request.getParameter("telphone");
			if(telphone!=null||telphone!=""||!telphone.equals("该号码已被其他用户绑定")){
				System.out.println(telphone);
				/*this.out(response,"15273835629");*/
				int result=new TestCl().findUser(telphone);
				this.out(response,result);
			}
			//this.out(response,telphone);
			//为前台页面在xml中设置访问路径(虚拟目录)
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			this.doGet(req,resp);
	}
}
