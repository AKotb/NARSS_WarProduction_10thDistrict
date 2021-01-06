/**
 * 
 */
package com.narss.warproduction.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author ahmed.kotb
 *
 */
@Entity
@Table(name = "mfcc_region_code")
public class RegionCode implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "rc_city_code")
	private String rcCityCode;

	@Id
	@Column(name = "rc_area_code")
	private String rcAreaCode;

	@Id
	@Column(name = "rc_regon_code")
	private String rcRegionCode;

	@Column(name = "rc_regon_name")
	private String rcRegionName;

	@Column(name = "rc_regon_map")
	private String rcRegionMap;

	/**
	 * @return the rcCityCode
	 */
	public String getRcCityCode() {
		return rcCityCode;
	}

	/**
	 * @param rcCityCode
	 *            the rcCityCode to set
	 */
	public void setRcCityCode(String rcCityCode) {
		this.rcCityCode = rcCityCode;
	}

	/**
	 * @return the rcAreaCode
	 */
	public String getRcAreaCode() {
		return rcAreaCode;
	}

	/**
	 * @param rcAreaCode
	 *            the rcAreaCode to set
	 */
	public void setRcAreaCode(String rcAreaCode) {
		this.rcAreaCode = rcAreaCode;
	}

	/**
	 * @return the rcRegionCode
	 */
	public String getRcRegionCode() {
		return rcRegionCode;
	}

	/**
	 * @param rcRegionCode
	 *            the rcRegionCode to set
	 */
	public void setRcRegionCode(String rcRegionCode) {
		this.rcRegionCode = rcRegionCode;
	}

	/**
	 * @return the rcRegionName
	 */
	public String getRcRegionName() {
		return rcRegionName;
	}

	/**
	 * @param rcRegionName
	 *            the rcRegionName to set
	 */
	public void setRcRegionName(String rcRegionName) {
		this.rcRegionName = rcRegionName;
	}

	/**
	 * @return the rcRegionMap
	 */
	public String getRcRegionMap() {
		return rcRegionMap;
	}

	/**
	 * @param rcRegionMap
	 *            the rcRegionMap to set
	 */
	public void setRcRegionMap(String rcRegionMap) {
		this.rcRegionMap = rcRegionMap;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "RegionCode [rcCityCode=" + rcCityCode + ", rcAreaCode=" + rcAreaCode + ", rcRegionCode=" + rcRegionCode
				+ ", rcRegionName=" + rcRegionName + ", rcRegionMap=" + rcRegionMap + "]";
	}

}
