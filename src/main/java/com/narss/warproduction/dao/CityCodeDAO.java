/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.CityCode;

/**
 * @author ahmed.kotb
 *
 */
public interface CityCodeDAO {

	List<CityCode> getAllCityCodes();
	
	CityCode getCityCode(String cityCode);

	boolean addCityCode(CityCode cityCode);
	
	boolean updateCityCode(CityCode cityCode);

	boolean deleteCityCode(String cityCode);

}
