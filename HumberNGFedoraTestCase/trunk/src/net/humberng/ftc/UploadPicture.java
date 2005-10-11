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
		
	private static String DOCROOT = "/var/www/localhost/htdocs/tmp/";
	
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
		
		List fileItems = null;
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			fileItems = upload.parseRequest(request);
		} catch (FileUploadException ex) {
			// log4j etc
			System.out.println(ex.toString());
		}

		String fileNames = new String();
		Iterator iter = fileItems.iterator();
		
		while(iter.hasNext()) {
			FileItem item = (FileItem) iter.next();
			if(item.isFormField()) {
				String name = item.getFieldName();
				String value = item.getString();
				fileNames += name + ": " + value + "<br>";
			} else {
				String fileName = item.getName();
				fileNames += "<img src=\"http://black.broadbandcapital.co.uk/tmp/" + fileName + "\"><br>";
				File uploadedFile = new File(DOCROOT + fileName);
				try {
					item.write(uploadedFile);
				} catch (Exception ex) {
					System.out.println(ex.toString());
				}
			}
		}
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<body>" +
				    fileNames +
				    "</body>" +
				    "</html>");
	}

}
