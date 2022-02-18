package com.SimformSolutions.mainProject.EmployeeDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.SimformSolutions.mainProject.model.RelativeOfEmployee;

@Repository
public class RelativeOfEmployeeDAOImplementation implements RelativeOfEmployeeDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void save(RelativeOfEmployee relativeOfEmployee) {
		Object[] relativeOfEmpObjects = {relativeOfEmployee.getName(), relativeOfEmployee.getEmail(),
				relativeOfEmployee.getPhone(), relativeOfEmployee.getRelation()};
		
		String sql = "INSERT INTO relative_of_employee(name, email, phone, relation, employee_id) values(?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, relativeOfEmpObjects);
		System.out.println("1 object inserted");
	}

}
