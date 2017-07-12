package controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.AccountDAO;
import entities.Account;

@Controller
public class AuthController {
	
	 @Autowired
	    private JavaMailSender mailSender;
	 @Autowired
	 private AccountDAO accountDAO;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Principal principal,ModelMap modelMap){
		if(principal!=null){
			return "redirect:/home";
		}
		return "auth/login";
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(){
		return "";
	}
	
	@RequestMapping(value="/403",method=RequestMethod.GET)
	public String er403(){
		return "auth/er403";
	}
	
	@RequestMapping(value="/forgetpass",method=RequestMethod.GET)
	public String forgetpass(){
		return "auth/forgetpass";
	}
	
	
	@RequestMapping(value="/forgetpass",method=RequestMethod.POST)
	public String forgetpass(@RequestParam("email") String email,ModelMap modelMap){
		System.out.println(email);
	         String subject="abc";
	         String message="tinh";
	        // prints debug info
	        System.out.println("To: " + email);
	        System.out.println("Subject: " + subject);
	        System.out.println("Message: " + message);
	         
//	         creates a simple e-mail object
	        SimpleMailMessage email1 = new SimpleMailMessage();
	        email1.setTo(email);
	        email1.setSubject(subject);
	        email1.setText(message);
	        // sends the e-mail
	        
	        Account objAC=accountDAO.getItemByEmail(email);
	        System.out.println(objAC.toString());
	        return "auth/login";
//	        if(objAC!=null){
//	        	System.out.println("null");
//	        	return "redirect:/forgetpass?msg=wrong";
//	        }else{
//	        	try{
//		        	 mailSender.send(email1);
//		        	 System.out.println("success");
//		        	 modelMap.addAttribute("new_pass", 1);
//		        	 return "auth/login";
//		        	 
//		        	 // forwards to the view named "Result"
//		        }catch(Exception e){
//		        	System.out.println("Error");
//		        	return "auth/login";
//		        }
//	        }
	}
}
