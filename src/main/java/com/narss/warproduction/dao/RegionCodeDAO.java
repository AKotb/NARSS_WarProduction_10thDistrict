/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.RegionCode;

/**
 * @author ahmed.kotb
 *
 */
public interface RegionCodeDAO {

	List<RegionCode> getAllRegionCodes();
	
	RegionCode getRegionCode(String cityCode, String areaCode, String regionCode);

	boolean addRegionCode(RegionCode regionCode);
	
	boolean updateRegionCode(RegionCode regionCode);

	boolean deleteRegionCode(String cityCode, String areaCode, String regionCode);

}
