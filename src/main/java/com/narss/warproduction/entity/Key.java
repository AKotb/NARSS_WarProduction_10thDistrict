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
@Table(name = "mfcc_key")
public class Key implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "key_city_code")
	private String keyCityCode;

	@Column(name = "key_area_code")
	private String keyAreaCode;

	@Column(name = "key_regon_code")
	private String keyRegionCode;

	@Column(name = "key_zone_code")
	private String keyZoneCode;

	@Column(name = "key_sub_zose_code")
	private String keySubZoneCode;

	@Column(name = "key_bulding_no")
	private String keyBuildingNo;

	@Column(name = "key_apprt_no")
	private String keyAppartementNo;

	@Id
	@Column(name = "key_all")
	private String keyAll;

	@Column(name = "key_bulding_key")
	private String keyBuildingKey;

	/**
	 * @return the keyCityCode
	 */
	public String getKeyCityCode() {
		return keyCityCode;
	}

	/**
	 * @param keyCityCode
	 *            the keyCityCode to set
	 */
	public void setKeyCityCode(String keyCityCode) {
		this.keyCityCode = keyCityCode;
	}

	/**
	 * @return the keyAreaCode
	 */
	public String getKeyAreaCode() {
		return keyAreaCode;
	}

	/**
	 * @param keyAreaCode
	 *            the keyAreaCode to set
	 */
	public void setKeyAreaCode(String keyAreaCode) {
		this.keyAreaCode = keyAreaCode;
	}

	/**
	 * @return the keyRegionCode
	 */
	public String getKeyRegionCode() {
		return keyRegionCode;
	}

	/**
	 * @param keyRegionCode
	 *            the keyRegionCode to set
	 */
	public void setKeyRegionCode(String keyRegionCode) {
		this.keyRegionCode = keyRegionCode;
	}

	/**
	 * @return the keyZoneCode
	 */
	public String getKeyZoneCode() {
		return keyZoneCode;
	}

	/**
	 * @param keyZoneCode
	 *            the keyZoneCode to set
	 */
	public void setKeyZoneCode(String keyZoneCode) {
		this.keyZoneCode = keyZoneCode;
	}

	/**
	 * @return the keySubZoneCode
	 */
	public String getKeySubZoneCode() {
		return keySubZoneCode;
	}

	/**
	 * @param keySubZoneCode
	 *            the keySubZoneCode to set
	 */
	public void setKeySubZoneCode(String keySubZoneCode) {
		this.keySubZoneCode = keySubZoneCode;
	}

	/**
	 * @return the keyBuildingNo
	 */
	public String getKeyBuildingNo() {
		return keyBuildingNo;
	}

	/**
	 * @param keyBuildingNo
	 *            the keyBuildingNo to set
	 */
	public void setKeyBuildingNo(String keyBuildingNo) {
		this.keyBuildingNo = keyBuildingNo;
	}

	/**
	 * @return the keyAppartementNo
	 */
	public String getKeyAppartementNo() {
		return keyAppartementNo;
	}

	/**
	 * @param keyAppartementNo
	 *            the keyAppartementNo to set
	 */
	public void setKeyAppartementNo(String keyAppartementNo) {
		this.keyAppartementNo = keyAppartementNo;
	}

	/**
	 * @return the keyAll
	 */
	public String getKeyAll() {
		return keyAll;
	}

	/**
	 * @param keyAll
	 *            the keyAll to set
	 */
	public void setKeyAll(String keyAll) {
		this.keyAll = keyAll;
	}

	/**
	 * @return the keyBuildingKey
	 */
	public String getKeyBuildingKey() {
		return keyBuildingKey;
	}

	/**
	 * @param keyBuildingKey
	 *            the keyBuildingKey to set
	 */
	public void setKeyBuildingKey(String keyBuildingKey) {
		this.keyBuildingKey = keyBuildingKey;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Key [keyCityCode=" + keyCityCode + ", keyAreaCode=" + keyAreaCode + ", keyRegionCode=" + keyRegionCode
				+ ", keyZoneCode=" + keyZoneCode + ", keySubZoneCode=" + keySubZoneCode + ", keyBuildingNo="
				+ keyBuildingNo + ", keyAppartementNo=" + keyAppartementNo + ", keyAll=" + keyAll + ", keyBuildingKey="
				+ keyBuildingKey + "]";
	}

}
