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
@Table(name = "mfcc_concession")
public class Concession implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "co_unit_barcode")
	private String coUnitBarcode;

	@Id
	@Column(name = "co_conc_serial")
	private double coConcessionSerial;

	@Column(name = "co_conc_from_name")
	private String coConcessionFromName;

	@Column(name = "co_conc_from_id")
	private String coConcessionFromId;

	@Column(name = "co_cons_to_name")
	private String coConcessionToName;

	@Column(name = "co_cons_to_id")
	private String coConcessionToId;

	@Column(name = "co_cons_date")
	private Date coConcessionDate;

	/**
	 * @return the coUnitBarcode
	 */
	public String getCoUnitBarcode() {
		return coUnitBarcode;
	}

	/**
	 * @param coUnitBarcode
	 *            the coUnitBarcode to set
	 */
	public void setCoUnitBarcode(String coUnitBarcode) {
		this.coUnitBarcode = coUnitBarcode;
	}

	/**
	 * @return the coConcessionSerial
	 */
	public double getCoConcessionSerial() {
		return coConcessionSerial;
	}

	/**
	 * @param coConcessionSerial
	 *            the coConcessionSerial to set
	 */
	public void setCoConcessionSerial(double coConcessionSerial) {
		this.coConcessionSerial = coConcessionSerial;
	}

	/**
	 * @return the coConcessionFromName
	 */
	public String getCoConcessionFromName() {
		return coConcessionFromName;
	}

	/**
	 * @param coConcessionFromName
	 *            the coConcessionFromName to set
	 */
	public void setCoConcessionFromName(String coConcessionFromName) {
		this.coConcessionFromName = coConcessionFromName;
	}

	/**
	 * @return the coConcessionFromId
	 */
	public String getCoConcessionFromId() {
		return coConcessionFromId;
	}

	/**
	 * @param coConcessionFromId
	 *            the coConcessionFromId to set
	 */
	public void setCoConcessionFromId(String coConcessionFromId) {
		this.coConcessionFromId = coConcessionFromId;
	}

	/**
	 * @return the coConcessionToName
	 */
	public String getCoConcessionToName() {
		return coConcessionToName;
	}

	/**
	 * @param coConcessionToName
	 *            the coConcessionToName to set
	 */
	public void setCoConcessionToName(String coConcessionToName) {
		this.coConcessionToName = coConcessionToName;
	}

	/**
	 * @return the coConcessionToId
	 */
	public String getCoConcessionToId() {
		return coConcessionToId;
	}

	/**
	 * @param coConcessionToId
	 *            the coConcessionToId to set
	 */
	public void setCoConcessionToId(String coConcessionToId) {
		this.coConcessionToId = coConcessionToId;
	}

	/**
	 * @return the coConcessionDate
	 */
	public Date getCoConcessionDate() {
		return coConcessionDate;
	}

	/**
	 * @param coConcessionDate
	 *            the coConcessionDate to set
	 */
	public void setCoConcessionDate(Date coConcessionDate) {
		this.coConcessionDate = coConcessionDate;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Concession [coUnitBarcode=" + coUnitBarcode + ", coConcessionSerial=" + coConcessionSerial
				+ ", coConcessionFromName=" + coConcessionFromName + ", coConcessionFromId=" + coConcessionFromId
				+ ", coConcessionToName=" + coConcessionToName + ", coConcessionToId=" + coConcessionToId
				+ ", coConcessionDate=" + coConcessionDate + "]";
	}

}
