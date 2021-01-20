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
@Table(name = "mfcc_external_violation")
public class ExternalViolation implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ev_new_violation_no")
	private String evNewViolationNo;

	@Column(name = "ev_related_budling_barcode")
	private String evRelatedBuildingBarcode;

	@Column(name = "ev_violation_type")
	private String evViolationType;

	@Column(name = "ev_violation_activy")
	private String evViolationActivity;

	@Column(name = "ev_no_of_floor")
	private String evNumberOfFloors;

	@Column(name = "ev_architectural_style")
	private String evArchitecturalStyle;

	@Column(name = "ev_status")
	private String evStatus;

	@Column(name = "ez_land_size")
	private double ezLandSize;

	@Column(name = "ex_repeted_size")
	private double exRepeatedSize;

	@Column(name = "ex_related_bulding_no")
	private String exRelatedBuildingNo;

	/**
	 * @return the evNewViolationNo
	 */
	public String getEvNewViolationNo() {
		return evNewViolationNo;
	}

	/**
	 * @param evNewViolationNo
	 *            the evNewViolationNo to set
	 */
	public void setEvNewViolationNo(String evNewViolationNo) {
		this.evNewViolationNo = evNewViolationNo;
	}

	/**
	 * @return the evRelatedBuildingBarcode
	 */
	public String getEvRelatedBuildingBarcode() {
		return evRelatedBuildingBarcode;
	}

	/**
	 * @param evRelatedBuildingBarcode
	 *            the evRelatedBuildingBarcode to set
	 */
	public void setEvRelatedBuildingBarcode(String evRelatedBuildingBarcode) {
		this.evRelatedBuildingBarcode = evRelatedBuildingBarcode;
	}

	/**
	 * @return the evViolationType
	 */
	public String getEvViolationType() {
		return evViolationType;
	}

	/**
	 * @param evViolationType
	 *            the evViolationType to set
	 */
	public void setEvViolationType(String evViolationType) {
		this.evViolationType = evViolationType;
	}

	/**
	 * @return the evViolationActivity
	 */
	public String getEvViolationActivity() {
		return evViolationActivity;
	}

	/**
	 * @param evViolationActivity
	 *            the evViolationActivity to set
	 */
	public void setEvViolationActivity(String evViolationActivity) {
		this.evViolationActivity = evViolationActivity;
	}

	/**
	 * @return the evNumberOfFloors
	 */
	public String getEvNumberOfFloors() {
		return evNumberOfFloors;
	}

	/**
	 * @param evNumberOfFloors
	 *            the evNumberOfFloors to set
	 */
	public void setEvNumberOfFloors(String evNumberOfFloors) {
		this.evNumberOfFloors = evNumberOfFloors;
	}

	/**
	 * @return the evArchitecturalStyle
	 */
	public String getEvArchitecturalStyle() {
		return evArchitecturalStyle;
	}

	/**
	 * @param evArchitecturalStyle
	 *            the evArchitecturalStyle to set
	 */
	public void setEvArchitecturalStyle(String evArchitecturalStyle) {
		this.evArchitecturalStyle = evArchitecturalStyle;
	}

	/**
	 * @return the evStatus
	 */
	public String getEvStatus() {
		return evStatus;
	}

	/**
	 * @param evStatus
	 *            the evStatus to set
	 */
	public void setEvStatus(String evStatus) {
		this.evStatus = evStatus;
	}

	/**
	 * @return the ezLandSize
	 */
	public double getEzLandSize() {
		return ezLandSize;
	}

	/**
	 * @param ezLandSize
	 *            the ezLandSize to set
	 */
	public void setEzLandSize(double ezLandSize) {
		this.ezLandSize = ezLandSize;
	}

	/**
	 * @return the exRepeatedSize
	 */
	public double getExRepeatedSize() {
		return exRepeatedSize;
	}

	/**
	 * @param exRepeatedSize
	 *            the exRepeatedSize to set
	 */
	public void setExRepeatedSize(double exRepeatedSize) {
		this.exRepeatedSize = exRepeatedSize;
	}

	/**
	 * @return the exRelatedBuildingNo
	 */
	public String getExRelatedBuildingNo() {
		return exRelatedBuildingNo;
	}

	/**
	 * @param exRelatedBuildingNo
	 *            the exRelatedBuildingNo to set
	 */
	public void setExRelatedBuildingNo(String exRelatedBuildingNo) {
		this.exRelatedBuildingNo = exRelatedBuildingNo;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ExternalViolation [evNewViolationNo=" + evNewViolationNo + ", evRelatedBuildingBarcode="
				+ evRelatedBuildingBarcode + ", evViolationType=" + evViolationType + ", evViolationActivity="
				+ evViolationActivity + ", evNumberOfFloors=" + evNumberOfFloors + ", evArchitecturalStyle="
				+ evArchitecturalStyle + ", evStatus=" + evStatus + ", ezLandSize=" + ezLandSize + ", exRepeatedSize="
				+ exRepeatedSize + ", exRelatedBuildingNo=" + exRelatedBuildingNo + "]";
	}

}
