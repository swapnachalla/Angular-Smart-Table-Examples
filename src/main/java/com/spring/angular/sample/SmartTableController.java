package com.spring.angular.sample;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.angular.sample.data.Person;
import com.spring.angular.sample.data.PersonForm;

 
@Controller
public class SmartTableController {
	
	
	
	@RequestMapping("/basicTable")
	public ModelAndView showBasicSmartTable() {		
		return new ModelAndView("basicSmartTable", "personForm", new PersonForm());
	}
	
	@RequestMapping(value = "/basicAjax",method = RequestMethod.GET)	
	public @ResponseBody  List<Person> getBasicSmartTableData() {
		PersonForm personForm =new PersonForm();		
		return personForm.getPersonList();
		
	}
	
	
	@RequestMapping("/508SmartTable")
	public ModelAndView show508SmartTable() {		
		return new ModelAndView("508SmartTable", "personForm", new PersonForm());
	}
	
	@RequestMapping(value = "/508Ajax",method = RequestMethod.GET)	
	public @ResponseBody  List<Person> get508SmartTableData() {
		PersonForm personForm =new PersonForm();
		return personForm.getPersonList();
		
	}

}
