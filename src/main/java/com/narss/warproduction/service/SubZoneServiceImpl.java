/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.SubZoneDAO;
import com.narss.warproduction.entity.SubZone;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class SubZoneServiceImpl implements SubZoneService {

	@Autowired
	SubZoneDAO subZoneDAO;

	@Transactional
	public List<SubZone> getAllSubZones() {
		return subZoneDAO.getAllSubZones();
	}

	@Transactional
	public boolean addSubZone(SubZone subZone) {
		subZoneDAO.addSubZone(subZone);
		return true;
	}

	@Transactional
	public boolean deleteSubZone(String azCity, String azAreaCode, String azRegionCode, String azZoneCode, String azSubZoneCode) {
		return subZoneDAO.deleteSubZone(azCity, azAreaCode, azRegionCode, azZoneCode, azSubZoneCode);
	}

}
