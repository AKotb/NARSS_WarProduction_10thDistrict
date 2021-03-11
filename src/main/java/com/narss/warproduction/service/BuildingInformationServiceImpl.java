/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.BuildingInformationDAO;
import com.narss.warproduction.entity.BuildingInformation;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class BuildingInformationServiceImpl implements BuildingInformationService {

	@Autowired
	BuildingInformationDAO buildingInformationDAO;
	
    @Transactional
	public List<BuildingInformation> getAllBuildingsInformation() {
		return buildingInformationDAO.getAllBuildingsInformation();
	}
    
    @Transactional
	public BuildingInformation getBuildingInformation(String biBuildingBarcode) {
		return buildingInformationDAO.getBuildingInformation(biBuildingBarcode);
	}

    @Transactional
	public boolean addBuildingInformation(BuildingInformation buildingInformation) {
    	buildingInformationDAO.addBuildingInformation(buildingInformation);
		return true;
	}
    
    @Transactional
	public boolean updateBuildingInformation(BuildingInformation buildingInformation) {
    	buildingInformationDAO.updateBuildingInformation(buildingInformation);
		return true;
	}

    @Transactional
	public boolean deleteBuildingInformation(String biBuildingBarcode) {
		return buildingInformationDAO.deleteBuildingInformation(biBuildingBarcode);
	}

}
