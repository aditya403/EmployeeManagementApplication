package com.SimformSolutions.mainProject.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SimformSolutions.mainProject.model.Employee;
import com.SimformSolutions.mainProject.EmployeeDAO.EmployeeDAO;

@Service
public class EmployeeServiceImplementation implements EmployeeService{
	
	@Autowired
	private EmployeeDAO employeeDAO;
	@Override
	public List<Employee> loadEmployees() {
		List<Employee> employeeList = employeeDAO.loadEmployees();
		
		return employeeList;
	}
	@Override
	public void saveEmployee(Employee employee) {
		employeeDAO.saveEmployee(employee);
	}
	@Override
	public Employee getEmployee(int id) {
		Employee employee = employeeDAO.getEmployee(id);
		return employee;
	}
	@Override
	public void update(Employee employee) {
		employeeDAO.update(employee);
		
	}
	@Override
	public void DeleteEmployee(int id) {
		employeeDAO.DeleteEmployee(id);
		
	}

	
	
}
