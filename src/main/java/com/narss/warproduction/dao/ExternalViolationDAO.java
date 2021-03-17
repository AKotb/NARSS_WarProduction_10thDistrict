/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.ExternalViolation;

/**
 * @author ahmed.kotb
 *
 */
public interface ExternalViolationDAO {

	List<ExternalViolation> getAllExternalViolations();
	
	ExternalViolation getExternalViolation(String evNewViolationNo);

	boolean addExternalViolation(ExternalViolation externalViolation);
	
	boolean updateExternalViolation(ExternalViolation externalViolation);

	boolean deleteExternalViolation(String evNewViolationNo);

}
