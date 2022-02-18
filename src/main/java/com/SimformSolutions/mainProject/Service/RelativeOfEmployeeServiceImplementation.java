package com.SimformSolutions.mainProject.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SimformSolutions.mainProject.EmployeeDAO.RelativeOfEmployeeDAO;
import com.SimformSolutions.mainProject.model.RelativeOfEmployee;

@Service
public class RelativeOfEmployeeServiceImplementation implements RelativeOfEmployeeService{
	
	@Autowired
	RelativeOfEmployeeDAO relativeOfEmployeeDAO;
	
	@Override
	public void save(RelativeOfEmployee relativeOfEmployee) {
		relativeOfEmployeeDAO.save(relativeOfEmployee);
		
	}

}
