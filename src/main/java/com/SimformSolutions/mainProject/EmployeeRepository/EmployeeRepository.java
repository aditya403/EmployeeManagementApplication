package com.SimformSolutions.mainProject.EmployeeRepository;

import org.springframework.data.repository.CrudRepository;

import com.SimformSolutions.mainProject.model.Employee;

public interface EmployeeRepository extends CrudRepository<Employee, Integer>{

}
