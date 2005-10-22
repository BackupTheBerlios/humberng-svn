/**
 * 
 */
package net.humberng.ftc;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

import org.apache.commons.fileupload.*;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import org.apache.struts.upload.FormFile;

/**
 * @author cyberroadie
 *
 */
public class UploadForm extends ActionForm {
	
	private FormFile file = null;
	
	public UploadForm () {
		
	}
	
	public void setFile(FormFile file) {
		this.file = file;
	}
	
	public FormFile getFile() {
		return this.file;
	}
    
}
