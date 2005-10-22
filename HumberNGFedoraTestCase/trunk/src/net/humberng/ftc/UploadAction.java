/**
 * 
 */
package net.humberng.ftc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import java.io.FileOutputStream;

/**
 * @author cyberroadie
 *
 */
public class UploadAction extends Action {
	
	private static String DOCROOT = "/var/www/localhost/htdocs/tmp/";
	
	public ActionForward execute(
		    ActionMapping mapping,
		    ActionForm form,
		    HttpServletRequest request,
		    HttpServletResponse response) throws Exception {
		
	    UploadForm uploadForm = (UploadForm) form;
	    FormFile file = uploadForm.getFile();
	    byte[] fileData = file.getFileData();
	    String fileName = file.getFileName();
	    
		FileOutputStream fos = new FileOutputStream(DOCROOT + fileName);
		fos.write(fileData);
		
		request.setAttribute("uploadForm", uploadForm);
		return mapping.findForward("success");
		
	}

}
