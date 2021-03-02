/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.CityCodeDAO;
import com.narss.warproduction.entity.CityCode;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class CityCodeServiceImpl implements CityCodeService {

	@Autowired
	CityCodeDAO cityCodeDAO;
	
    @Transactional
	public List<CityCode> getAllCityCodes() {
		return cityCodeDAO.getAllCityCodes();
	}
    
    @Transactional
	public CityCode getCityCode(String cityCode) {
		return cityCodeDAO.getCityCode(cityCode);
	}

    @Transactional
	public boolean addCityCode(CityCode cityCode) {
		cityCodeDAO.addCityCode(cityCode);
		return true;
	}
    
    @Transactional
	public boolean updateCityCode(CityCode cityCode) {
		cityCodeDAO.updateCityCode(cityCode);
		return true;
	}

    @Transactional
	public boolean deleteCityCode(String cityCode) {
		return cityCodeDAO.deleteCityCode(cityCode);
	}

}
