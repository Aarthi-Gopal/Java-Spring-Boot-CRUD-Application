package com.spring.boot.jsp.page.service;

import java.util.List;

import com.spring.boot.jsp.page.model.Patient;

public interface PatientService {
	List<Patient> getAll();

	Patient get(int id);

	void save(Patient patient);

	void delete(int id);
}
