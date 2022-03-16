package com.spring.boot.jsp.page.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.spring.boot.jsp.page.model.Patient;

@Repository
public interface PatientRepository extends CrudRepository<Patient, Integer> {
}
