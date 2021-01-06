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
@Table(name = "mfcc_area_code")
public class AreaCode implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "AreaCode [arCityCode=" + arCityCode + ", arAreaCode=" + arAreaCode + ", arAreaName=" + arAreaName
				+ ", arAreaMap=" + arAreaMap + "]";
	}

	@Id
	@Column(name = "ar_city_code")
	private String arCityCode;
	
	@Id
	@Column(name = "ar_area_code")
	private String arAreaCode;
	
	@Column(name = "ar_area_name")
	private String arAreaName;
	
	@Column(name = "ar_area_map")
	private String arAreaMap;

	/**
	 * @return the arCityCode
	 */
	public String getArCityCode() {
		return arCityCode;
	}

	/**
	 * @param arCityCode the arCityCode to set
	 */
	public void setArCityCode(String arCityCode) {
		this.arCityCode = arCityCode;
	}

	/**
	 * @return the arAreaCode
	 */
	public String getArAreaCode() {
		return arAreaCode;
	}

	/**
	 * @param arAreaCode the arAreaCode to set
	 */
	public void setArAreaCode(String arAreaCode) {
		this.arAreaCode = arAreaCode;
	}

	/**
	 * @return the arAreaName
	 */
	public String getArAreaName() {
		return arAreaName;
	}

	/**
	 * @param arAreaName the arAreaName to set
	 */
	public void setArAreaName(String arAreaName) {
		this.arAreaName = arAreaName;
	}

	/**
	 * @return the arAreaMap
	 */
	public String getArAreaMap() {
		return arAreaMap;
	}

	/**
	 * @param arAreaMap the arAreaMap to set
	 */
	public void setArAreaMap(String arAreaMap) {
		this.arAreaMap = arAreaMap;
	}

	

}
