/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.CityCode;

/**
 * @author ahmed.kotb
 *
 */
public interface CityCodeService {
	
	List<CityCode> getAllCityCodes();

	boolean addCityCode(CityCode cityCode);

	boolean deleteCityCode(String cityCode);
}
