/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.AreaCode;


/**
 * @author ahmed.kotb
 *
 */
public interface AreaCodeDAO {

	List<AreaCode> getAllAreaCodes();

	AreaCode getAreaCode(String cityCode, String areaCode);
	
	boolean addAreaCode(AreaCode areaCode);

	boolean deleteAreaCode(String cityCode, String areaCode);
	
	boolean updateAreaCode(AreaCode areaCode);

}
