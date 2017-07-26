package controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;

import dao.AccountDAO;
import dao.CatDAO;
import dao.DeviceDAO;
import dao.EmployeeDAO;
import entities.Account;
import entities.Book;

@Controller
@RequestMapping(value="/home")
public class HomeController {

	@Autowired
	private AccountDAO accountDAO;
	
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Autowired
	private DeviceDAO deviceDAO;
	@Autowired
	private CatDAO catDAO;
	
	@ModelAttribute
	public void addCommons(ModelMap modelMap,Principal principal,HttpSession session){
		if(principal!=null){
			session.setAttribute("userLogin",principal.getName());
//			session.setAttribute("objLogin",accountDAOLogin);
			session.setAttribute("objLogin",accountDAO.getItem(principal.getName()));
			System.out.println(accountDAO.getItem(principal.getName()).getPicture());
		}
		 
	}
	
	@RequestMapping(value="",method=RequestMethod.GET)
	public String home(Principal principal,HttpSession session,ModelMap modelMap){
		if(principal==null){
			return "redirect:/login";
		}else{
			modelMap.addAttribute("sizeEmployee", employeeDAO.getList().size());
			modelMap.addAttribute("numberOfDevices", deviceDAO.getItems().size());
			modelMap.addAttribute("numberOfCat", catDAO.getItems().size());
//			modelMap.addAttribute("sizeMessage", contactDAO.getItems().size());
//			session.setAttribute("userLogin",principal.getName());
//			session.setAttribute("objLogin",accountDAO.getItem(principal.getName()));
			return "home.index";
		}
	}
//	@RequestMapping(value = "/downloadPDF", method = RequestMethod.GET)
//    public ModelAndView downloadExcel() {
//        // create some sample data
//        List<Book> listBooks = new ArrayList<Book>();
//        listBooks.add(new Book("Spring in Action", "Craig Walls", "1935182358",
//                "June 29th 2011", 31.98F));
//        listBooks.add(new Book("Spring in Practice", "Willie Wheeler, Joshua White",
//                "1935182056", "May 16th 2013", 31.95F));
//        listBooks.add(new Book("Pro Spring 3",
//                "Clarence Ho, Rob Harrop", "1430241071", "April 18th 2012", 31.85F));
//        listBooks.add(new Book("Spring Integration in Action", "Mark Fisher", "1935182439",
//                "September 26th 2012", 28.73F));
// 
//        // return a view which will be resolved by an excel view resolver
//        return new ModelAndView("pdfView", "listBooks", listBooks);
//    }
}
