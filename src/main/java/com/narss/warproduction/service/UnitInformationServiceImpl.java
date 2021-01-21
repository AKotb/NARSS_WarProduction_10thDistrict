/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.UnitInformationDAO;
import com.narss.warproduction.entity.UnitInformation;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class UnitInformationServiceImpl implements UnitInformationService {

	@Autowired
	UnitInformationDAO unitInformationDAO;
	
    @Transactional
	public List<UnitInformation> getAllUnitsInformation() {
		return unitInformationDAO.getAllUnitsInformation();
	}

    @Transactional
	public boolean addUnitInformation(UnitInformation unitInformation) {
    	unitInformationDAO.addUnitInformation(unitInformation);
		return true;
	}

    @Transactional
	public boolean deleteUnitInformation(String fltBarcode) {
		return unitInformationDAO.deleteUnitInformation(fltBarcode);
	}

}
