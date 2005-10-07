/**
 * 
 */
package net.humberng.ftc;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;

/**
 * @author cyberroadie
 *
 */
public class UploadPicture extends HttpServlet {
		
	List fileItems;
	String fileName, fileNames;
	
	public UploadPicture () {
		
	}

	public void doPost(HttpServletRequest request,
			           HttpServletResponse response)
		throws ServletException, IOException {
		
		doGet(request, response);
		
	}
	
	public void doGet(HttpServletRequest request,
            HttpServletResponse response)
    throws ServletException, IOException {
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			fileItems = upload.parseRequest(request);
		} catch (FileUploadException ex) {
			// log4j etc
			System.out.println(ex.toString());
		}

		for(int i = 0; i < fileItems.size(); i++) {
			FileItem file = (FileItem) fileItems.get(i);
			fileName = file.getName();
			fileNames += fileNames + "<br>" + fileName;
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<body>" +
				    "Files: <br>" + fileNames +
				    "</body>" +
				    "</html>");
	}

}
