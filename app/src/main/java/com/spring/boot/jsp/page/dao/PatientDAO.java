package com.spring.boot.jsp.page.dao;

import java.util.List;

import com.spring.boot.jsp.page.model.Patient;

public interface PatientDAO {
	List<Patient> getAll();

	Patient get(int id);

	void save(Patient patient);

	void delete(int id);
}
