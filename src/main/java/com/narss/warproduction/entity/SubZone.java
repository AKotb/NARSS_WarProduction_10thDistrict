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
@Table(name = "mfcc_sub_zone")
public class SubZone implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "az_city")
	private String azCity;

	@Id
	@Column(name = "az_area_code")
	private String azAreaCode;

	@Id
	@Column(name = "az_regon_code")
	private String azRegionCode;

	@Id
	@Column(name = "az_zone_code")
	private String azZoneCode;

	@Id
	@Column(name = "az_sub_zone_code")
	private String azSubZoneCode;

	@Column(name = "az_sub_zone_map")
	private String azSubZoneMap;

	/**
	 * @return the azCity
	 */
	public String getAzCity() {
		return azCity;
	}

	/**
	 * @param azCity the azCity to set
	 */
	public void setAzCity(String azCity) {
		this.azCity = azCity;
	}

	/**
	 * @return the azAreaCode
	 */
	public String getAzAreaCode() {
		return azAreaCode;
	}

	/**
	 * @param azAreaCode the azAreaCode to set
	 */
	public void setAzAreaCode(String azAreaCode) {
		this.azAreaCode = azAreaCode;
	}

	/**
	 * @return the azRegionCode
	 */
	public String getAzRegionCode() {
		return azRegionCode;
	}

	/**
	 * @param azRegionCode the azRegionCode to set
	 */
	public void setAzRegionCode(String azRegionCode) {
		this.azRegionCode = azRegionCode;
	}

	/**
	 * @return the azZoneCode
	 */
	public String getAzZoneCode() {
		return azZoneCode;
	}

	/**
	 * @param azZoneCode the azZoneCode to set
	 */
	public void setAzZoneCode(String azZoneCode) {
		this.azZoneCode = azZoneCode;
	}

	/**
	 * @return the azSubZoneCode
	 */
	public String getAzSubZoneCode() {
		return azSubZoneCode;
	}

	/**
	 * @param azSubZoneCode the azSubZoneCode to set
	 */
	public void setAzSubZoneCode(String azSubZoneCode) {
		this.azSubZoneCode = azSubZoneCode;
	}

	/**
	 * @return the azSubZoneMap
	 */
	public String getAzSubZoneMap() {
		return azSubZoneMap;
	}

	/**
	 * @param azSubZoneMap the azSubZoneMap to set
	 */
	public void setAzSubZoneMap(String azSubZoneMap) {
		this.azSubZoneMap = azSubZoneMap;
	}

	@Override
	public String toString() {
		return "SubZone [azCity=" + azCity + ", azAreaCode=" + azAreaCode + ", azRegionCode=" + azRegionCode
				+ ", azZoneCode=" + azZoneCode + ", azSubZoneCode=" + azSubZoneCode + ", azSubZoneMap=" + azSubZoneMap
				+ "]";
	}

}
