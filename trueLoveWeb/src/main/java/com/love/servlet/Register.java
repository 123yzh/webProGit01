package com.love.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Register extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 逻辑业务测试文件
		try {
			// 解决中文乱码的问题
			resp.setContentType("text/html;charset=utf-8");
			req.setCharacterEncoding("utf-8");
			/*
			// 定义薪水数组
			String[] usex = { "男", "女" };
			String[] sal = { "1000元以下", "1001-2000元", "2001-3000元",
					"3001-5000元", "5001-8000元", "8001-10000元", "10001-20000元",
					"20001-50000元", "50000元以上" };
			String[] edu = { "高中及以下", "大专", "大学本科", "硕士", "博士" };
			String[] marr = { "未婚", "离婚", "丧偶" };
			// getParameter接受的实参是来自input的name属性值
			// 通过name等于gender的name属性值来获取用户在该项目上的输入值
			String userName = req.getParameter("uname");// 用户名
			String pwd = req.getParameter("upwd");
			String sexNum = req.getParameter("gender");// 性别0代表男,1代表女
			String sex = usex[Integer.parseInt(sexNum)];
			String year = req.getParameter("year");// 年份
			String month = req.getParameter("month");// 月份
			String day = req.getParameter("day");// 天
			String province = req.getParameter("workprovincereg_txt");// 省份
			String city = req.getParameter("workcity_txt");// 城市
			String height = req.getParameter("height");// 身高
			String salaryNum = req.getParameter("salary");// 月薪对应序号
			String eduNum = req.getParameter("education");// 月薪对应序号
			String marNum = req.getParameter("marriage");// 月薪对应序号
			String salary = sal[Integer.parseInt(salaryNum)];// 获取薪水
			String education = edu[Integer.parseInt(eduNum)];// 最高学历
			String marriage = marr[Integer.parseInt((marNum))];// 婚姻状况
			String telphone = req.getParameter("telphone");// 电话号码
			String email = req.getParameter("email");// 电子邮件
			String code = req.getParameter("code");// 验证码
			System.out.println("用户名" + userName + "密码" + pwd + "性别:" + sex
					+ " 出生年月:" + year + "/" + month + "/" + day + " "
					+ province + "省  " + city + "市" + " 月薪" + salary + " 手机"
					+ telphone + "邮箱" + email + "最高学历" + education + "婚姻状况"
					+ marriage + "身高" + height + "验证码" + code);
			
			if(true){
				//跳转界面
				req.getRequestDispatcher("registerNext.jsp").forward(req, resp);
			}
	*/
			/*搜索页面测试
			String sex=req.getParameter("sex");
			String age=req.getParameter("age");
			String education=req.getParameter("education");
			String salary=req.getParameter("salary");
			//String select=req.getParameter("selectObj");
			System.out.println(sex+" "+age+" "+education+" "+salary);
			*/
			req.getRequestDispatcher("index-search.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
