package com.SimformSolutions.mainProject.Service;

import java.util.List;

import com.SimformSolutions.mainProject.model.Employee;

public interface EmployeeService {
	List<Employee> loadEmployees();

	void saveEmployee(Employee employee);
	
	Employee getEmployee(int id);

	void update(Employee employee);

	void DeleteEmployee(int id);
}
