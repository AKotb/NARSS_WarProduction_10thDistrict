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

	boolean addZone(Zone zone);

	boolean deleteZone(String zonCity, String areaCode, String regionCode, String zoneCode);
}
