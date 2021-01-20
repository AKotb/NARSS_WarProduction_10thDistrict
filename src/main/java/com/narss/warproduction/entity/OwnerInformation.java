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
@Table(name = "mfcc_owners_information")
public class OwnerInformation implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "oi_unit_barcode")
	private String oiUnitBarcode;

	@Column(name = "oi_bulding_no")
	private String oiBuildingNo;

	@Column(name = "oi_unit_no")
	private String oiUnitNo;

	@Id
	@Column(name = "oi_owner_sequance")
	private String oiOwnerSequence;

	@Column(name = "oi_owner_name")
	private String oiOwnerName;

	@Column(name = "oi_owner_id")
	private String oiOwnerId;

	/**
	 * @return the oiUnitBarcode
	 */
	public String getOiUnitBarcode() {
		return oiUnitBarcode;
	}

	/**
	 * @param oiUnitBarcode
	 *            the oiUnitBarcode to set
	 */
	public void setOiUnitBarcode(String oiUnitBarcode) {
		this.oiUnitBarcode = oiUnitBarcode;
	}

	/**
	 * @return the oiBuildingNo
	 */
	public String getOiBuildingNo() {
		return oiBuildingNo;
	}

	/**
	 * @param oiBuildingNo
	 *            the oiBuildingNo to set
	 */
	public void setOiBuildingNo(String oiBuildingNo) {
		this.oiBuildingNo = oiBuildingNo;
	}

	/**
	 * @return the oiUnitNo
	 */
	public String getOiUnitNo() {
		return oiUnitNo;
	}

	/**
	 * @param oiUnitNo
	 *            the oiUnitNo to set
	 */
	public void setOiUnitNo(String oiUnitNo) {
		this.oiUnitNo = oiUnitNo;
	}

	/**
	 * @return the oiOwnerSequence
	 */
	public String getOiOwnerSequence() {
		return oiOwnerSequence;
	}

	/**
	 * @param oiOwnerSequence
	 *            the oiOwnerSequence to set
	 */
	public void setOiOwnerSequence(String oiOwnerSequence) {
		this.oiOwnerSequence = oiOwnerSequence;
	}

	/**
	 * @return the oiOwnerName
	 */
	public String getOiOwnerName() {
		return oiOwnerName;
	}

	/**
	 * @param oiOwnerName
	 *            the oiOwnerName to set
	 */
	public void setOiOwnerName(String oiOwnerName) {
		this.oiOwnerName = oiOwnerName;
	}

	/**
	 * @return the oiOwnerId
	 */
	public String getOiOwnerId() {
		return oiOwnerId;
	}

	/**
	 * @param oiOwnerId
	 *            the oiOwnerId to set
	 */
	public void setOiOwnerId(String oiOwnerId) {
		this.oiOwnerId = oiOwnerId;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "OwnerInformation [oiUnitBarcode=" + oiUnitBarcode + ", oiBuildingNo=" + oiBuildingNo + ", oiUnitNo="
				+ oiUnitNo + ", oiOwnerSequence=" + oiOwnerSequence + ", oiOwnerName=" + oiOwnerName + ", oiOwnerId="
				+ oiOwnerId + "]";
	}

}
