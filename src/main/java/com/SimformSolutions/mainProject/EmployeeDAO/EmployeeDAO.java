package com.SimformSolutions.mainProject.EmployeeDAO;

import java.util.List;

import com.SimformSolutions.mainProject.model.Employee;

public interface EmployeeDAO {
	public List<Employee> loadEmployees();
	
	void saveEmployee(Employee employee);
	
	Employee getEmployee(int id);

	public void update(Employee employee);

	public void DeleteEmployee(int id);
}
