/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.SubZone;

/**
 * @author ahmed.kotb
 *
 */
public interface SubZoneService {

	List<SubZone> getAllSubZones();
	
	SubZone getSubZone(String azCity, String azAreaCode, String azRegionCode, String azZoneCode, String azSubZoneCode);

	boolean addSubZone(SubZone subZone);
	
	boolean updateSubZone(SubZone subZone);

	boolean deleteSubZone(String azCity, String azAreaCode, String azRegionCode, String azZoneCode, String azSubZoneCode);
}
