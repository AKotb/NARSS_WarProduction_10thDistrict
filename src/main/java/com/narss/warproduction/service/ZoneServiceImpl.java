/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.ZoneDAO;
import com.narss.warproduction.entity.Zone;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class ZoneServiceImpl implements ZoneService {

	@Autowired
	ZoneDAO zoneDAO;

	@Transactional
	public List<Zone> getAllZones() {
		return zoneDAO.getAllZones();
	}

	@Transactional
	public boolean addZone(Zone zone) {
		zoneDAO.addZone(zone);
		return true;
	}

	@Transactional
	public boolean deleteZone(String zonCity, String areaCode, String regionCode, String zoneCode) {
		return zoneDAO.deleteZone(zonCity, areaCode, regionCode, zoneCode);
	}

}
