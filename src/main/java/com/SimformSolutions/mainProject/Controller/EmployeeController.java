package com.SimformSolutions.mainProject.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.SimformSolutions.mainProject.Service.EmployeeService;
import com.SimformSolutions.mainProject.Service.RelativeOfEmployeeService;
import com.SimformSolutions.mainProject.model.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	RelativeOfEmployeeService relativeOfEmployeeService;
	
	@RequestMapping("/")
	public String home() {
		return "Welcome.jsp";
	}
	
	@RequestMapping("/AddEmployee")
	public String Add(Model model) {
		model.addAttribute(new Employee());
		return "AddEmployeeForm.jsp";
	}
	
	@RequestMapping("/showAddEmployee")			//Shows Add Employee page
	public String addEmployee(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "AddEmployeeForm.jsp";
	}
	
	@PostMapping("/saveUpdatedEmployee")				//Saves new employee
	public String saveUpdatedEmployee(Employee employee) {
		//do an update
		employeeService.update(employee);
		return "redirect:/showEmployee";
	}
	
	@PostMapping("/saveMultipleEmployee")				//Saves new employee
	public String saveMultipleEmployee(String[] name, String[] email, String[] address, Long[] phone) {
		Employee employee = new Employee();
		for(int i=0; i<name.length; i++) {
			employee.setName(name[i]);
			employee.setEmail(email[i]);
			employee.setAddress(address[i]);
			employee.setPhone(phone[i]);
			employeeService.saveEmployee(employee);
		}
		return "redirect:/showEmployee";
	}
	
	
	@RequestMapping("/showEmployee")			//Shows Employee Table per page 5
	public String ShowEmployee(Model model) {
		List<Employee> employees = employeeService.loadEmployees();
		model.addAttribute("employees", employees);
		return "EmployeeList.jsp";
	}
	
	@RequestMapping("/updateEmployee")			//updates Employee
	public String updateEmployee(@RequestParam("id") int id, Model model) {
		Employee employeeToBeUpdated = employeeService.getEmployee(id);
		model.addAttribute("employee", employeeToBeUpdated);
		return "UpdateEmployee.jsp";
	}
	
	@RequestMapping("/DeleteEmployee")			//Delete Employee
	public String DeleteEmployee(@RequestParam("id") int id) {
		//capture the id and do a service call
		employeeService.DeleteEmployee(id);
		return "redirect:/showEmployee";
	}
	
	
	/**
	 * Employee Relative Logics
	 */

	
	@RequestMapping("/AddRelatives")
	public String AddRelatives(@RequestParam("id") int id, Model model) {
		model.addAttribute("employeeId",id);
		System.out.println(id);
		return "AddRelatives.jsp";
	}
	
	@RequestMapping(path="saveRelatives", method=RequestMethod.POST)				//Saves new employee
	public String saveRelatives(HttpServletRequest request) {
//		relativeOfEmployeeService.save(relativeOfEmployee);
		System.out.println(request.getParameter("txtEmailAddress"));
		System.out.println(request.getParameter("txtEmailAddress"));
		System.out.println(request.getParameter("txtEmailAddress"));
		System.out.println(request.getParameter("txtEmailAddress"));
		System.out.println(request.getParameter("txtEmailAddress"));
		return "redirect:/showEmployee";
	}
}




















