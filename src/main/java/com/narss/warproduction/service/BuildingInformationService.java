/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.BuildingInformation;;

/**
 * @author ahmed.kotb
 *
 */
public interface BuildingInformationService {

	List<BuildingInformation> getAllBuildingsInformation();

	boolean addBuildingInformation(BuildingInformation buildingInformation);

	boolean deleteBuildingInformation(String biBuildingBarcode);
}
