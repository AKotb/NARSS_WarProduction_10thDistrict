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

	boolean addAreaCode(AreaCode areaCode);

	boolean deleteAreaCode(String cityCode, String areaCode);
}
