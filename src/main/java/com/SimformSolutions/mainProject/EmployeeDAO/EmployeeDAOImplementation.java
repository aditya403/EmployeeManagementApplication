package com.SimformSolutions.mainProject.EmployeeDAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.SimformSolutions.mainProject.RowMapper.EmployeeRowMapper;
import com.SimformSolutions.mainProject.model.Employee;

@Repository
public class EmployeeDAOImplementation implements EmployeeDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Employee> loadEmployees() {
		String sql = "SELECT * FROM employee";
		List<Employee> ListOfEmployees = jdbcTemplate.query(sql, new EmployeeRowMapper());
		
		return ListOfEmployees;
	}

	@Override
	public void saveEmployee(Employee employee) {
		Object[] sqlParametersForEmployee = {employee.getName(), employee.getEmail(),
											employee.getPhone(), employee.getAddress()};
		
		String sql = "INSERT INTO employee(name, email, phone, address) values(?, ?, ?, ?)";
		
		jdbcTemplate.update(sql, sqlParametersForEmployee);
		System.out.println("1 record updated");
		
	}

	@Override
	public Employee getEmployee(int id) {
		String sql = "SELECT * FROM employee WHERE ID=?";
		Employee employee = jdbcTemplate.queryForObject(sql, new EmployeeRowMapper(), id);
		return employee;
	}

	@Override
	public void update(Employee employee) {
		String sql = "UPDATE employee SET name = ?, email = ?, phone = ?, address = ? WHERE id = ?";
		jdbcTemplate.update(sql, employee.getName(), employee.getEmail(), employee.getPhone(), employee.getAddress(), employee.getId());
		System.out.println("1 updated");
	}

	@Override
	public void DeleteEmployee(int id) {
		String sql = "DELETE FROM employee WHERE id = ?";
		jdbcTemplate.update(sql, id);
	}
	

}
