/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.UnitInformation;

/**
 * @author ahmed.kotb
 *
 */
public interface UnitInformationService {
	
	List<UnitInformation> getAllUnitsInformation();
	
	UnitInformation getUnitInformation(String fltBarcode);

	boolean addUnitInformation(UnitInformation unitInformation);
	
	boolean updateUnitInformation(UnitInformation unitInformation);

	boolean deleteUnitInformation(String fltBarcode);
}
