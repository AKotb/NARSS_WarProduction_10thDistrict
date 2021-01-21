/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.ExternalViolation;

/**
 * @author ahmed.kotb
 *
 */
public interface ExternalViolationService {
	
	List<ExternalViolation> getAllExternalViolations();

	boolean addExternalViolation(ExternalViolation externalViolation);

	boolean deleteExternalViolation(String evNewViolationNo);
}
