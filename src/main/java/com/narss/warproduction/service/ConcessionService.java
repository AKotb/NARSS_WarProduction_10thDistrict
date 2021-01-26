/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.Concession;

/**
 * @author ahmed.kotb
 *
 */
public interface ConcessionService {
	
	List<Concession> getAllConcessions();

	boolean addConcession(Concession concession);

	boolean deleteConcession(double coConcessionSerial);
}
