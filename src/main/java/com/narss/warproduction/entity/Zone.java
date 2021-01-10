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
@Table(name = "mfcc_zone")
public class Zone implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "zon_city")
	private String zonCity;

	@Id
	@Column(name = "area_code")
	private String areaCode;

	@Id
	@Column(name = "region_code")
	private String regionCode;

	@Id
	@Column(name = "zone_code")
	private String zoneCode;

	@Column(name = "zone_map")
	private String zoneMap;

	/**
	 * @return the zonCity
	 */
	public String getZonCity() {
		return zonCity;
	}

	/**
	 * @param zonCity the zonCity to set
	 */
	public void setZonCity(String zonCity) {
		this.zonCity = zonCity;
	}

	/**
	 * @return the areaCode
	 */
	public String getAreaCode() {
		return areaCode;
	}

	/**
	 * @param areaCode the areaCode to set
	 */
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	/**
	 * @return the regionCode
	 */
	public String getRegionCode() {
		return regionCode;
	}

	/**
	 * @param regionCode the regionCode to set
	 */
	public void setRegionCode(String regionCode) {
		this.regionCode = regionCode;
	}

	/**
	 * @return the zoneCode
	 */
	public String getZoneCode() {
		return zoneCode;
	}

	/**
	 * @param zoneCode the zoneCode to set
	 */
	public void setZoneCode(String zoneCode) {
		this.zoneCode = zoneCode;
	}

	/**
	 * @return the zoneMap
	 */
	public String getZoneMap() {
		return zoneMap;
	}

	/**
	 * @param zoneMap the zoneMap to set
	 */
	public void setZoneMap(String zoneMap) {
		this.zoneMap = zoneMap;
	}

	@Override
	public String toString() {
		return "Zone [zonCity=" + zonCity + ", areaCode=" + areaCode + ", regionCode=" + regionCode + ", zoneCode="
				+ zoneCode + ", zoneMap=" + zoneMap + "]";
	}

}
