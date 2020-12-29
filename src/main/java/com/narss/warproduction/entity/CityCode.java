/**
 * 
 */
package com.narss.warproduction.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author ahmed.kotb
 *
 */
@Entity
@Table(name = "mfcc_city_code")
public class CityCode {

	@Override
	public String toString() {
		return "City Code [cityCode=" + cityCode + ", cityName=" + cityName + "]";
	}

	@Id
	@Column(name = "cty_code")
	private String cityCode;
	@Column(name = "cty_name")
	private String cityName;

	/**
	 * @return the cityCode
	 */
	public String getCityCode() {
		return cityCode;
	}

	/**
	 * @param cityCode
	 *            the cityCode to set
	 */
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	/**
	 * @return the cityName
	 */
	public String getCityName() {
		return cityName;
	}

	/**
	 * @param cityName
	 *            the cityName to set
	 */
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

}
