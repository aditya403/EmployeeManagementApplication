package com.SimformSolutions.mainProject.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.SimformSolutions.mainProject.model.Employee;

public class EmployeeRowMapper implements RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		Employee employee = new Employee();
				
		employee.setId(rs.getInt("id"));
		employee.setName(rs.getString("name"));
		employee.setEmail(rs.getString("email"));
		employee.setPhone(rs.getLong("phone"));
		employee.setAddress(rs.getString("address"));
		
		return employee;
	}
	
}
