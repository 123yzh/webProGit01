package com.love.servlet.upload;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;  
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;  
import java.io.InputStream;
import java.io.Writer;
import java.util.Iterator;  
import java.util.List;  
import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import org.apache.commons.fileupload.FileItem;   
import org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;  
import org.apache.commons.fileupload.servlet.ServletFileUpload;   
import org.apache.commons.fileupload.util.Streams;
/**
 * 上传servlet
 * @author lisanlai
 *
 */
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");   
        // 设置字符编码为UTF-8, 这样支持汉字显示   
        response.setCharacterEncoding("UTF-8");
       // String x0=request.getParameter("x");
       // String y0=request.getParameter("y");
       // String w0=request.getParameter("w");
       // String h0=request.getParameter("h");
       // Integer x=Integer.parseInt(x0);
       // Integer y=Integer.parseInt(y0);
       // Integer w=Integer.parseInt(w0);
       // Integer h=Integer.parseInt(h0);
       // Writer o = response.getWriter();
		
		/**
		 * 首先判断form的enctype是不是multipart/form-data
		 * 同时也判断了form的提交方式是不是post
		 * 方法：isMultipartContent(request)
		 */
	
		if(ServletFileUpload.isMultipartContent(request)){
			request.setCharacterEncoding("utf-8");
			
			// 实例化一个硬盘文件工厂,用来配置上传组件ServletFileUpload   
			DiskFileItemFactory factory =  new DiskFileItemFactory();
			String fileNames=System.getProperty("catalina.home");//获取本地服务器根目录
			//File fileNames = new File("../");
			//System.out.println(fileNames);
			//设置文件存放的临时文件夹，这个文件夹要真实存在
			File fileDir = new File(fileNames+"/webapps_4/upload/peopleInfo");
			if(fileDir.isDirectory() && fileDir.exists()==false){
				fileDir.mkdir();
			}
			System.out.println("图片临时存放目录: "+fileDir);
			factory.setRepository(fileDir);
			
			//设置最大占用的内存
			factory.setSizeThreshold(1024000);
			
			//创建ServletFileUpload对象
			ServletFileUpload sfu = new ServletFileUpload(factory);
			sfu.setHeaderEncoding("utf-8");
			
			//设置单个文件最大值byte 
			sfu.setFileSizeMax(102400000);
			
			//所有上传文件的总和最大值byte   
			sfu.setSizeMax(204800000);
			
			List<FileItem> items =  null;
			
			try {
				items = sfu.parseRequest(request);
			}catch (SizeLimitExceededException e) {   
                System.out.println("文件大小超过了最大值");   
            } catch(FileUploadException e) {   
                e.printStackTrace();   
            } 
            
            //取得items的迭代器
            Iterator<FileItem> iter = items==null?null:items.iterator();
            
            //图片上传后存放的路径目录
           // File images = new File("C:/Users/Administrator/Desktop/upload/images/");
            File images = new File(fileNames+"/webapps_4/upload/peopleInfo");
            try {
				//cutImg(images,12,12,23,23);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            System.out.println("图片上传存放目录: "+fileDir);
			if(images.exists()==false){
				images.mkdirs();
			}
            //迭代items
            while(iter!=null && iter.hasNext()){
            	FileItem item = (FileItem) iter.next();
            	
            	//如果传过来的是普通的表单域
            	if(item.isFormField()){
            		System.out.print("普通的表单域:");   
                    System.out.print(new String(item.getFieldName()) + "  ");   
                    System.out.println(new String(item.getString("UTF-8")));   
            	}
            	//文件域
            	else if(!item.isFormField()){
            		System.out.println("源图片:" + item.getName());   
            		String fileName = item.getName().substring(item.getName().lastIndexOf("/")+1);
            		System.out.println(fileName);
            		String fileRootName = fileName.substring(0,fileName.lastIndexOf("."));//说去去掉后缀名的文件名
            		//再做判断
            		fileRootName=1+".jpg";//为重命名，这里可以从数据库里面查出总记录数后加1，就是图片的文件名，这样可以动态地实现图片的重命名
            		System.out.println(fileRootName);
            		BufferedInputStream in = new BufferedInputStream(item.getInputStream());
            		//整个文件存放路径
            		String fileWholePath = images+"/"+fileRootName;
            		//文件存储在D:/upload/images目录下,这个目录也得存在 
                    BufferedOutputStream out = new BufferedOutputStream(   
                           //new FileOutputStream(new File(images.getAbsolutePath()+ fileName))); 
                    		new FileOutputStream(new File(fileWholePath)));
                    Streams.copy(in, out, true);   
                    //o.write("文件上传成功");
                    //跳转页面(转发)
                    request.getRequestDispatcher("myTrueLove.jsp").forward(request, response);
            	}
            }
		}else {   
            System.out.println("表单的enctype 类型错误");   
        } 
	}

	
	
	 @SuppressWarnings("unchecked")
	    public  String cutImg(File file,Integer x,Integer y,Integer w,Integer h) throws Exception{
	         // 取得图片读入器
	      Iterator readers = ImageIO.getImageReadersByFormatName("jpg");
	      ImageReader reader = (ImageReader)readers.next();
	      // 取得图片读入流
	      InputStream source=new FileInputStream(file);
	      ImageInputStream iis = ImageIO.createImageInputStream(source);
	      reader.setInput(iis, true);
	      // 图片参数
	      ImageReadParam param = reader.getDefaultReadParam();
	      Rectangle rect = new Rectangle(x,y,w,h);
	      param.setSourceRegion(rect);
	      BufferedImage bi = reader.read(0,param);            
	      ImageIO.write(bi, "jpg",file);
	        return file.getAbsolutePath();
	    }
	
	
}
