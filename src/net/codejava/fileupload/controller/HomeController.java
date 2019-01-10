package net.codejava.fileupload.controller;

import java.awt.Desktop;
import java.io.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.codejava.fileupload.dao.FileUploadDAO;
import net.codejava.fileupload.model.UploadFile;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


/**
 * Handles requests for the file upload page.
 */
@Controller
public class HomeController {
	private static final String UploadFile = null;
	@Autowired
	private FileUploadDAO fileUploadDao;
	
	public String pdf;
	@Autowired
	HttpSession session;
 
	@RequestMapping(value = "/displaypagef", method = RequestMethod.GET)
	public String showUploadForm(HttpServletRequest request,ModelMap model) {
		
		UploadFile ob= new UploadFile();
		
	    //  pdf  = "";
		
		//System.out.println("-------------"+(long)session.getAttribute("q"));
		    
//		    if(session.getAttribute("q") != null)  
//		    {
//		    	System.out.println("ooooooooooo");
//		    	String l=session.getAttribute("q").toString();
//		    	session.removeValue("q");
//			ob.setId(Long.parseLong(l));
//			System.out.println("ooooooooooo");
//		    }
//		    else
//		    {
//		    	 ob.setId(167); 
//		    }
		    	
	   
//               if(pdf == "")
//               {
//            	   ob.setId(167); 
//               }
//               else
//               {
//            	   ob.setId(Long.parseLong(pdf));   
//               }
//		  	
		   UploadFile filee=fileUploadDao.Fileget(ob);
		
		
		model.addAttribute("value",filee);
		
		return "Pdfdisplaypage";
	}
	
	
	
	@RequestMapping(value = "/displaypagef2", method = RequestMethod.GET)
	public String showUploadForm2(HttpServletRequest request,ModelMap model,@RequestParam("id")String id) {
		 
		  //session.invalidate();
		   session.setAttribute("q",id);
		  pdf=id;
		  System.out.println("value---"+pdf);
		  ArrayList<UploadFile> file2= (ArrayList<UploadFile>)fileUploadDao.File_getlist("java_");
			
			model.addAttribute("pdf_ob",file2);
		
		return "user_pdf_showing_list";
	}
	
	
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String doLogin() {
//		
//		return "Pdfdisplaypage";
//	}

	 
	

	
	
	
	@RequestMapping(value = "/displaypdf", method = RequestMethod.GET)
	public String show(HttpServletRequest request,ModelMap model,@RequestParam("id")String id) {
		
		
		UploadFile ob=new UploadFile();
		ob.setId(Long.parseLong(id));
		UploadFile filee=fileUploadDao.Fileget(ob);
		
		if(filee == null)
			System.out.println("noooo");
		else
			System.out.println("-----------------------------------");
		model.addAttribute("value",filee);
		
//		byte[] data=filee.getData();
//	    
//		  try
//			{
//			  
//	    FileOutputStream fout = new FileOutputStream("C:/Users/Hp/Documents/kirubha.pdf");
//	    DataOutputStream dout = new DataOutputStream(fout);
//	    dout.write(data,0,data.length);
//	    fout.close();
//	    
//	  
//	    	
//		//Desktop.getDesktop().open(new File("C:/Users/Hp/Documents/kirubha.pdf"));  
//		}
//		
//		catch(Exception e)
//		{
//			System.out.println(e);
//		}
		
		
//	 
		
		
       ArrayList<UploadFile> file2= (ArrayList<UploadFile>)fileUploadDao.File_getlist("java_");
		
		model.addAttribute("pdf_ob",file2);
		
		return "user_pdf_showing_list";
		
	
	}
	
	
	
	//displaycourses
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showcoursedet(@ModelAttribute UploadFile ob,HttpServletRequest request,ModelMap model) {
		
		ArrayList<UploadFile> filee= (ArrayList<UploadFile>)fileUploadDao.File_getlist("java_");
		
		model.addAttribute("pdf_ob",filee);
		
		return "user_pdf_showing_list";
		
		
	}
	
	
	
	
	
	
	
	@RequestMapping(value = "/toview", method = RequestMethod.GET)
	public String form_for_padf_display(@ModelAttribute UploadFile ob,HttpServletRequest request,ModelMap model) {
		
		UploadFile filee=fileUploadDao.Fileget(ob);
		model.addAttribute("value",filee);
		return "displaypage";
	}
	
	
	
	
	
	
	
	
    @RequestMapping(value = "/doUpload", method = RequestMethod.POST)
    public String handleFileUpload(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload,@RequestParam CommonsMultipartFile[] fileUpload1,@RequestParam CommonsMultipartFile[] fileUpload2) throws Exception {
         
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){
                 
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                
                UploadFile uploadFile = new UploadFile();
                
                
                uploadFile.setFileName("java_week1_"+aFile.getOriginalFilename());
                uploadFile.setData(aFile.getBytes());
                fileUploadDao.save(uploadFile);                
            }
        }
 
        
        if (fileUpload1 != null && fileUpload1.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload1){
                 
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                
                UploadFile uploadFile = new UploadFile();
                
                
                uploadFile.setFileName("java_week2_"+aFile.getOriginalFilename());
                uploadFile.setData(aFile.getBytes());
                fileUploadDao.save(uploadFile);                
            }
        }
        
        
        
        if (fileUpload2 != null && fileUpload2.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload2){
                  
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                
                UploadFile uploadFile = new UploadFile();
                
                
                uploadFile.setFileName("java_week3_"+aFile.getOriginalFilename());
                uploadFile.setData(aFile.getBytes());
                fileUploadDao.save(uploadFile);                
            }
        }
 
        return "Success";
    }	
}
