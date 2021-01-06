/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.RegionCode;

/**
 * @author ahmed.kotb
 *
 */
public interface RegionCodeService {

	List<RegionCode> getAllRegionCodes();

	boolean addRegionCode(RegionCode regionCode);

	boolean deleteRegionCode(String cityCode, String areaCode, String regionCode);
}
