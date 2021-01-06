/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.RegionCodeDAO;
import com.narss.warproduction.entity.RegionCode;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class RegionCodeServiceImpl implements RegionCodeService {

	@Autowired
	RegionCodeDAO regionCodeDAO;

	@Transactional
	public List<RegionCode> getAllRegionCodes() {
		return regionCodeDAO.getAllRegionCodes();
	}

	@Transactional
	public boolean addRegionCode(RegionCode regionCode) {
		regionCodeDAO.addRegionCode(regionCode);
		return true;
	}

	@Transactional
	public boolean deleteRegionCode(String cityCode, String areaCode, String regionCode) {
		return regionCodeDAO.deleteRegionCode(cityCode, areaCode, regionCode);
	}

}
