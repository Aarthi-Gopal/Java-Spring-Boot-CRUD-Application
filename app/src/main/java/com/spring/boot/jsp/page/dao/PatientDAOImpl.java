package com.spring.boot.jsp.page.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.boot.jsp.page.model.Patient;

@Repository
public class PatientDAOImpl implements PatientDAO{

	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List<Patient> getAll() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Patient> query = currentSession.createQuery("from Patient", Patient.class);
		List<Patient> list = query.getResultList();
		return list;
	}

	@Override
	public Patient get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Patient patientObject = currentSession.get(Patient.class, id);
		return patientObject;
	}

	@Override
	public void save(Patient patient) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(patient);		
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Patient patientObject = currentSession.get(Patient.class, id);
		currentSession.delete(patientObject);
	}

}
