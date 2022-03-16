package com.spring.boot.jsp.page.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.boot.jsp.page.dao.PatientDAO;
import com.spring.boot.jsp.page.model.Patient;

@Transactional
@Service
public class PatientServiceImpl implements PatientService{

	@Autowired
	private PatientDAO patientDAO;
		
	@Override
	public List<Patient> getAll() {
		return patientDAO.getAll();
	}

	@Override
	public Patient get(int id) {
		return patientDAO.get(id);
	}

	@Override
	public void save(Patient patient) {
		patientDAO.save(patient);	
	}

	@Override
	public void delete(int id) {
		patientDAO.delete(id);
	}
}
