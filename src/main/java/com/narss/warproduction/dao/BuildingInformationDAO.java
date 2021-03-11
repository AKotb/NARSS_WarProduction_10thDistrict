/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.BuildingInformation;

/**
 * @author ahmed.kotb
 *
 */
public interface BuildingInformationDAO {

	List<BuildingInformation> getAllBuildingsInformation();
	
	BuildingInformation getBuildingInformation(String biBuildingBarcode);

	boolean addBuildingInformation(BuildingInformation buildingInformation);
	
	boolean updateBuildingInformation(BuildingInformation buildingInformation);

	boolean deleteBuildingInformation(String biBuildingBarcode);

}
