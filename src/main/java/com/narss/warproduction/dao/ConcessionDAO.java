/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.Concession;

/**
 * @author ahmed.kotb
 *
 */
public interface ConcessionDAO {

	List<Concession> getAllConcessions();

	boolean addConcession(Concession concession);

	boolean deleteConcession(double coConcessionSerial);

}
