package jung;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;

@WebServlet("/fileupload55.do")
public class Fileupload_process extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	/*	request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String number=request.getParameter("number");
		String name=request.getParameter("name");
		String Price=request.getParameter("price");
		String category=request.getParameter("category");
		String Stock=request.getParameter("stock");
		String allergy=request.getParameter("allergy");
		String origin=request.getParameter("origin");
		String description=request.getParameter("description");
		
		Integer price;
		Integer stock;
		
		
		String file_repo = "C:\\web\\junggadang\\src\\main\\webapp\\resources\\images";
		String fileName = (String) request.getParameter("fileName"); 
		
		System.out.println("fileName=" + fileName);
		OutputStream out = response.getOutputStream();
		
		String downFile = file_repo + "\\" + fileName;
		File f = new File(downFile);
		
		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-disposition", "attachment; fileName=" + fileName); 	//해당 fileName으로 다운로드 진행
		
		FileInputStream in = new FileInputStream(f);
		
		byte[] buffer = new byte[1024 * 8];
		while (true) {
			int count = in.read(buffer);
			if(count == -1)
				break;
			out.write(buffer, 0, count);
		}
		in.close();
		out.close();
	
	if (Price == null || Price.isEmpty()) {
		price = 0;
	} else {
		price = Integer.valueOf(Price);
	}
	
	if (Stock == null || Stock.isEmpty()) {
		stock = 0;
	} else {
		stock = Integer.valueOf(Stock);
	}
	
	SellRepository create =SellRepository.getInstance();
	
	Sell newSell = new Sell(number, name, price, category, stock, allergy, origin);
	newSell.setName(number);
	newSell.setName(name);
	newSell.setPrice(price);
	newSell.setName(category);
	newSell.setName(Stock);
	newSell.setName(allergy);
	newSell.setName(origin);
	
	create.addSell(newSell);

	response.sendRedirect("./junggadang/sell.jsp")*/;
		
				request.setCharacterEncoding("utf-8");
		
		String number=request.getParameter("number");
		String name=request.getParameter("name");
		String Price=request.getParameter("price");
		String category=request.getParameter("category");
		String Stock=request.getParameter("stock");
		String allergy=request.getParameter("allergy");
		String origin=request.getParameter("origin");
		String description=request.getParameter("description");		
		String filename=request.getParameter("filename");
		
		Integer price;
		Integer stock;
		

		File fileUploadPath = new File("C:\\web\\junggadang\\src\\main\\webapp\\resources\\images");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(fileUploadPath);
		factory.setSizeThreshold(1024 * 1024);
		
		ServletFileUpload upload = new ServletFileUpload();
		try {
			List items = upload.parseRequest(request);
			Iterator params = items.iterator();
			
			while (params.hasNext()) {
				FileItem fileItem = (FileItem) params.next();
				
				if (!fileItem.isFormField()) {
					String fileName = fileItem.getName();
					fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
					File file = new File(fileUploadPath + "/" + fileName);
					fileItem.write(file);
				}						
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		if (Price == null || Price.isEmpty()) {
			price = 0;
		} else {
			price = Integer.valueOf(Price);
		}	
		
		if (Stock == null || Stock.isEmpty()) {
			stock = 0;
		} else {
			stock = Integer.valueOf(Stock);
		}
		
		SellRepository create =SellRepository.getInstance();
		
		Sell newSell = new Sell(number, name, price, category, stock, allergy, origin);
		newSell.setName(number);
		newSell.setName(name);
		newSell.setPrice(price);
		newSell.setName(category);
		newSell.setName(Stock);
		newSell.setName(allergy);
		newSell.setName(origin);
		
		create.addSell(newSell);
	
		response.sendRedirect("./junggadang/sell.jsp");

}
}

