package com.SimformSolutions.mainProject.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SimformSolutions.mainProject.EmployeeRepository.EmployeeRepository;
import com.SimformSolutions.mainProject.Service.EmployeeService;
import com.SimformSolutions.mainProject.model.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeRepository repo;
	
	@Autowired
	EmployeeService employeeService;
	
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
	
	@PostMapping("/saveEmployee")				//Saves new employee
	public String saveEmployee(Employee employee) {
		//if a user does have a id do a update
		//else do an update
		if(employee.getId()==0) {
			//insert a new record 
			employeeService.saveEmployee(employee);
		}
		else {
			//do an update
			employeeService.update(employee);
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
		System.out.println(id);
		
		Employee employeeToBeUpdated = employeeService.getEmployee(id);
		model.addAttribute("employee", employeeToBeUpdated);
		return "AddEmployeeForm.jsp";
	}
	
	@RequestMapping("/DeleteEmployee")			//updates Employee
	public String DeleteEmployee(@RequestParam("id") int id) {
		//capture the id and do a service call
		employeeService.DeleteEmployee(id);
		return "redirect:/showEmployee";
	}
	
	
	
}




















