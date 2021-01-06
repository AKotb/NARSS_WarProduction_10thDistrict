/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.AreaCodeDAO;
import com.narss.warproduction.entity.AreaCode;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class AreaCodeServiceImpl implements AreaCodeService {

	@Autowired
	AreaCodeDAO areaCodeDAO;

	@Transactional
	public List<AreaCode> getAllAreaCodes() {
		return areaCodeDAO.getAllAreaCodes();
	}

	@Transactional
	public boolean addAreaCode(AreaCode areaCode) {
		areaCodeDAO.addAreaCode(areaCode);
		return true;
	}

	@Transactional
	public boolean deleteAreaCode(String cityCode, String areaCode) {
		return areaCodeDAO.deleteAreaCode(cityCode, areaCode);
	}

}
