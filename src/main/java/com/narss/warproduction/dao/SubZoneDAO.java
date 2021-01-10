/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.SubZone;

/**
 * @author ahmed.kotb
 *
 */
public interface SubZoneDAO {

	List<SubZone> getAllSubZones();

	boolean addSubZone(SubZone subZone);

	boolean deleteSubZone(String azCity, String azAreaCode, String azRegionCode, String azZoneCode, String azSubZoneCode);

}
