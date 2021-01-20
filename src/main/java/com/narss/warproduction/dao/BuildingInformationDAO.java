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

	boolean addBuildingInformation(BuildingInformation buildingInformation);

	boolean deleteBuildingInformation(String biBuildingBarcode);

}
