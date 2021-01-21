/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.ExternalViolationDAO;
import com.narss.warproduction.entity.ExternalViolation;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class ExternalViolationServiceImpl implements ExternalViolationService {

	@Autowired
	ExternalViolationDAO externalViolationDAO;
	
    @Transactional
	public List<ExternalViolation> getAllExternalViolations() {
		return externalViolationDAO.getAllExternalViolations();
	}

    @Transactional
	public boolean addExternalViolation(ExternalViolation externalViolation) {
    	externalViolationDAO.addExternalViolation(externalViolation);
		return true;
	}

    @Transactional
	public boolean deleteExternalViolation(String evNewViolationNo) {
		return externalViolationDAO.deleteExternalViolation(evNewViolationNo);
	}

}
