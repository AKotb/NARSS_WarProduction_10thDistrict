/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.AreaCode;

/**
 * @author ahmed.kotb
 *
 */
public interface AreaCodeService {

	List<AreaCode> getAllAreaCodes();
	
	AreaCode getAreaCode(String cityCode, String areaCode);

	boolean addAreaCode(AreaCode areaCode);
	
	boolean updateAreaCode(AreaCode areaCode);

	boolean deleteAreaCode(String cityCode, String areaCode);
}
