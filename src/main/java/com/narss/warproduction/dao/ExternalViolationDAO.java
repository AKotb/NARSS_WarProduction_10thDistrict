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

	boolean addExternalViolation(ExternalViolation externalViolation);

	boolean deleteExternalViolation(String evNewViolationNo);

}
