/**
 * 
 */
package com.narss.warproduction.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author ahmed.kotb
 *
 */
@Entity
@Table(name = "mfcc_authorization")
public class Authorization implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "ma_barcode")
	private String maUnitBarcode;

	@Id
	@Column(name = "ma_delegation_no")
	private String maDelegationNo;

	@Column(name = "ma_delegation_date")
	private Date maDelegationDate;

	@Column(name = "ma_delegation_issued_place")
	private String maDelegationIssuedPlace;

	@Column(name = "ma_delegation_type")
	private String maDelegationType;

	@Column(name = "ma_delegator_name")
	private String maDelegatorName;

	@Column(name = "ma_delegator_id")
	private String maDelegatorId;

	@Column(name = "ma_delegate_to_name")
	private String maDelegateToName;

	@Column(name = "ma_delegate_to_id")
	private String maDelegateToId;

	/**
	 * @return the maUnitBarcode
	 */
	public String getMaUnitBarcode() {
		return maUnitBarcode;
	}

	/**
	 * @param maUnitBarcode
	 *            the maUnitBarcode to set
	 */
	public void setMaUnitBarcode(String maUnitBarcode) {
		this.maUnitBarcode = maUnitBarcode;
	}

	/**
	 * @return the maDelegationNo
	 */
	public String getMaDelegationNo() {
		return maDelegationNo;
	}

	/**
	 * @param maDelegationNo
	 *            the maDelegationNo to set
	 */
	public void setMaDelegationNo(String maDelegationNo) {
		this.maDelegationNo = maDelegationNo;
	}

	/**
	 * @return the maDelegationDate
	 */
	public Date getMaDelegationDate() {
		return maDelegationDate;
	}

	/**
	 * @param maDelegationDate
	 *            the maDelegationDate to set
	 */
	public void setMaDelegationDate(Date maDelegationDate) {
		this.maDelegationDate = maDelegationDate;
	}

	/**
	 * @return the maDelegationIssuedPlace
	 */
	public String getMaDelegationIssuedPlace() {
		return maDelegationIssuedPlace;
	}

	/**
	 * @param maDelegationIssuedPlace
	 *            the maDelegationIssuedPlace to set
	 */
	public void setMaDelegationIssuedPlace(String maDelegationIssuedPlace) {
		this.maDelegationIssuedPlace = maDelegationIssuedPlace;
	}

	/**
	 * @return the maDelegationType
	 */
	public String getMaDelegationType() {
		return maDelegationType;
	}

	/**
	 * @param maDelegationType
	 *            the maDelegationType to set
	 */
	public void setMaDelegationType(String maDelegationType) {
		this.maDelegationType = maDelegationType;
	}

	/**
	 * @return the maDelegatorName
	 */
	public String getMaDelegatorName() {
		return maDelegatorName;
	}

	/**
	 * @param maDelegatorName
	 *            the maDelegatorName to set
	 */
	public void setMaDelegatorName(String maDelegatorName) {
		this.maDelegatorName = maDelegatorName;
	}

	/**
	 * @return the maDelegatorId
	 */
	public String getMaDelegatorId() {
		return maDelegatorId;
	}

	/**
	 * @param maDelegatorId
	 *            the maDelegatorId to set
	 */
	public void setMaDelegatorId(String maDelegatorId) {
		this.maDelegatorId = maDelegatorId;
	}

	/**
	 * @return the maDelegateToName
	 */
	public String getMaDelegateToName() {
		return maDelegateToName;
	}

	/**
	 * @param maDelegateToName
	 *            the maDelegateToName to set
	 */
	public void setMaDelegateToName(String maDelegateToName) {
		this.maDelegateToName = maDelegateToName;
	}

	/**
	 * @return the maDelegateToId
	 */
	public String getMaDelegateToId() {
		return maDelegateToId;
	}

	/**
	 * @param maDelegateToId
	 *            the maDelegateToId to set
	 */
	public void setMaDelegateToId(String maDelegateToId) {
		this.maDelegateToId = maDelegateToId;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Authorization [maUnitBarcode=" + maUnitBarcode + ", maDelegationNo=" + maDelegationNo
				+ ", maDelegationDate=" + maDelegationDate + ", maDelegationIssuedPlace=" + maDelegationIssuedPlace
				+ ", maDelegationType=" + maDelegationType + ", maDelegatorName=" + maDelegatorName + ", maDelegatorId="
				+ maDelegatorId + ", maDelegateToName=" + maDelegateToName + ", maDelegateToId=" + maDelegateToId + "]";
	}

}
