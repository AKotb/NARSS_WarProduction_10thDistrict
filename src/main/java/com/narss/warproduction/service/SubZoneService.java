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

	boolean addSubZone(SubZone subZone);

	boolean deleteSubZone(String azCity, String azAreaCode, String azRegionCode, String azZoneCode, String azSubZoneCode);
}
