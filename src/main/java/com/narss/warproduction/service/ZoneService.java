/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.Zone;

/**
 * @author ahmed.kotb
 *
 */
public interface ZoneService {

	List<Zone> getAllZones();
	
	Zone getZone(String zonCity, String areaCode, String regionCode, String zoneCode);

	boolean addZone(Zone zone);
	
	boolean updateZone(Zone zone);

	boolean deleteZone(String zonCity, String areaCode, String regionCode, String zoneCode);
}
