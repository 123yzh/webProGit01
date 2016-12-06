package com.love.servlet.mail;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.love.servlet.BasicServlet;
import com.love.utils.MailConnect;

public class SendMailServlet extends BasicServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
       
	@SuppressWarnings("static-access")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String email=request.getParameter("email");
		//String mycode=request.getParameter("code");//取到输入的验证码
		//生成随机码-->存入session-->从缓存取出-->验证
		MailConnect mailConnect=new MailConnect();
		List<String> list=new ArrayList<String>();
		java.util.Collections.addAll(list,"1","2","3","4","5","6","7","8","9");
		for(int i=97;i<123;i++){
			list.add(String.valueOf((char)i));
		}
		
		Collections.shuffle(list);
		
		String code="";
		for(int i=0;i<6;i++){
			code+=list.get(i);
		}
		
		session=request.getSession();
		session.setAttribute("sendCode", code);
		//1293580602
		System.out.println(code+"  "+uname+" "+email+" ");
		/**
		 * boolean bl=mailConnect.sendQQmail("1293580602@qq.com", "mwdiuiqtdrfnbaeh", email, code, uname);
		 
		 *CardDAV/CalDAV服务 (什么是CardDAV/CalDAV，它又是如何设置？)这是有提示框的服务
		 *
		 *

			vayjqfzjrbbyhfab  POP3/SMTP服务 (如何使用 Foxmail 等软件收发邮件？)
			lpaaoinirgwhjaah  IMAP/SMTP服务 (什么是 IMAP，它又是如何设置？)
			mqwuqxqdygfrjbia-->服务密码
		 */
		boolean bl=mailConnect.sendQQmail(response,"1440194053@qq.com","mqwuqxqdygfrjbia", email, code, uname);
		startTimer(request);
		
		if(bl){
			this.out(response,code);
		}else{//通过前台与后台创建的验证码比较，将数字传给前台的data。以向前台交互数据(主要靠json),因为在提交之前是要先运行这里的
			this.out(response,'0');//有异常时
		}
	}


	private void startTimer(final HttpServletRequest request) {
		final Timer timer=new Timer();
		timer.schedule(new TimerTask(){
			public void run(){
				session.removeAttribute("sendCode");
				timer.cancel();
			}
		}, 60000);
	}

}
