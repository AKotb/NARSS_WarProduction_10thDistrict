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
@Table(name = "mfcc_units_information")
public class UnitInformation implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "flt_building_no")
	private String fltBuildingNo;

	@Column(name = "flt_unit_no")
	private String fltUnitNo;

	@Column(name = "flt_buld_type")
	private String fltBuildType;

	@Column(name = "flt_floor_no")
	private String fltFloorNo;

	@Column(name = "flt_currnt_owner_name")
	private String fltCurrentOwnerName;

	@Column(name = "flt_deliver_date")
	private Date fltDeliverDate;

	@Column(name = "flt_assigned_name")
	private String fltAssignedName;

	@Column(name = "flt_assign_date")
	private Date fltAssignDate;

	@Column(name = "flt_unit_size")
	private double fltUnitSize;

	@Column(name = "flt_unit_price")
	private double fltUnitPrice;

	@Column(name = "flt_floor")
	private String fltFloor;

	@Column(name = "flt_comments")
	private String fltComments;

	@Id
	@Column(name = "flt_barcode")
	private String fltBarcode;

	@Column(name = "flt_cange_activity")
	private String fltChangeActivity;

	@Column(name = "flt_trespassing_bulding")
	private String fltTrespassingBuidling;

	@Column(name = "flt_extend_of_violation")
	private String fltExtendOfViolation;

	@Column(name = "flt_violation_size")
	private String fltViolationSize;

	@Column(name = "flt_trespassing_fence")
	private String fltTrespassingFence;

	@Column(name = "flt_trespassing_works")
	private String fltTrespassingWorks;

	@Column(name = "flt_main_activty")
	private String fltMainActivity;

	@Column(name = "flt_bulding_barcode")
	private String fltBuildingBarcode;

	@Column(name = "flt_current_owner_id")
	private String fltCurrentOwnerID;

	@Column(name = "flt_trespassing_fence_size")
	private double fltTrespassingFenceSize;

	@Column(name = "flt_trespassing_bulding_size")
	private double fltTrespassingBuidlingSize;

	/**
	 * @return the fltBuildingNo
	 */
	public String getFltBuildingNo() {
		return fltBuildingNo;
	}

	/**
	 * @param fltBuildingNo
	 *            the fltBuildingNo to set
	 */
	public void setFltBuildingNo(String fltBuildingNo) {
		this.fltBuildingNo = fltBuildingNo;
	}

	/**
	 * @return the fltUnitNo
	 */
	public String getFltUnitNo() {
		return fltUnitNo;
	}

	/**
	 * @param fltUnitNo
	 *            the fltUnitNo to set
	 */
	public void setFltUnitNo(String fltUnitNo) {
		this.fltUnitNo = fltUnitNo;
	}

	/**
	 * @return the fltBuildType
	 */
	public String getFltBuildType() {
		return fltBuildType;
	}

	/**
	 * @param fltBuildType
	 *            the fltBuildType to set
	 */
	public void setFltBuildType(String fltBuildType) {
		this.fltBuildType = fltBuildType;
	}

	/**
	 * @return the fltFloorNo
	 */
	public String getFltFloorNo() {
		return fltFloorNo;
	}

	/**
	 * @param fltFloorNo
	 *            the fltFloorNo to set
	 */
	public void setFltFloorNo(String fltFloorNo) {
		this.fltFloorNo = fltFloorNo;
	}

	/**
	 * @return the fltCurrentOwnerName
	 */
	public String getFltCurrentOwnerName() {
		return fltCurrentOwnerName;
	}

	/**
	 * @param fltCurrentOwnerName
	 *            the fltCurrentOwnerName to set
	 */
	public void setFltCurrentOwnerName(String fltCurrentOwnerName) {
		this.fltCurrentOwnerName = fltCurrentOwnerName;
	}

	/**
	 * @return the fltDeliverDate
	 */
	public Date getFltDeliverDate() {
		return fltDeliverDate;
	}

	/**
	 * @param fltDeliverDate
	 *            the fltDeliverDate to set
	 */
	public void setFltDeliverDate(Date fltDeliverDate) {
		this.fltDeliverDate = fltDeliverDate;
	}

	/**
	 * @return the fltAssignedName
	 */
	public String getFltAssignedName() {
		return fltAssignedName;
	}

	/**
	 * @param fltAssignedName
	 *            the fltAssignedName to set
	 */
	public void setFltAssignedName(String fltAssignedName) {
		this.fltAssignedName = fltAssignedName;
	}

	/**
	 * @return the fltAssignDate
	 */
	public Date getFltAssignDate() {
		return fltAssignDate;
	}

	/**
	 * @param fltAssignDate
	 *            the fltAssignDate to set
	 */
	public void setFltAssignDate(Date fltAssignDate) {
		this.fltAssignDate = fltAssignDate;
	}

	/**
	 * @return the fltUnitSize
	 */
	public double getFltUnitSize() {
		return fltUnitSize;
	}

	/**
	 * @param fltUnitSize
	 *            the fltUnitSize to set
	 */
	public void setFltUnitSize(double fltUnitSize) {
		this.fltUnitSize = fltUnitSize;
	}

	/**
	 * @return the fltUnitPrice
	 */
	public double getFltUnitPrice() {
		return fltUnitPrice;
	}

	/**
	 * @param fltUnitPrice
	 *            the fltUnitPrice to set
	 */
	public void setFltUnitPrice(double fltUnitPrice) {
		this.fltUnitPrice = fltUnitPrice;
	}

	/**
	 * @return the fltFloor
	 */
	public String getFltFloor() {
		return fltFloor;
	}

	/**
	 * @param fltFloor
	 *            the fltFloor to set
	 */
	public void setFltFloor(String fltFloor) {
		this.fltFloor = fltFloor;
	}

	/**
	 * @return the fltComments
	 */
	public String getFltComments() {
		return fltComments;
	}

	/**
	 * @param fltComments
	 *            the fltComments to set
	 */
	public void setFltComments(String fltComments) {
		this.fltComments = fltComments;
	}

	/**
	 * @return the fltBarcode
	 */
	public String getFltBarcode() {
		return fltBarcode;
	}

	/**
	 * @param fltBarcode
	 *            the fltBarcode to set
	 */
	public void setFltBarcode(String fltBarcode) {
		this.fltBarcode = fltBarcode;
	}

	/**
	 * @return the fltChangeActivity
	 */
	public String getFltChangeActivity() {
		return fltChangeActivity;
	}

	/**
	 * @param fltChangeActivity
	 *            the fltChangeActivity to set
	 */
	public void setFltChangeActivity(String fltChangeActivity) {
		this.fltChangeActivity = fltChangeActivity;
	}

	/**
	 * @return the fltTrespassingBuidling
	 */
	public String getFltTrespassingBuidling() {
		return fltTrespassingBuidling;
	}

	/**
	 * @param fltTrespassingBuidling
	 *            the fltTrespassingBuidling to set
	 */
	public void setFltTrespassingBuidling(String fltTrespassingBuidling) {
		this.fltTrespassingBuidling = fltTrespassingBuidling;
	}

	/**
	 * @return the fltExtendOfViolation
	 */
	public String getFltExtendOfViolation() {
		return fltExtendOfViolation;
	}

	/**
	 * @param fltExtendOfViolation
	 *            the fltExtendOfViolation to set
	 */
	public void setFltExtendOfViolation(String fltExtendOfViolation) {
		this.fltExtendOfViolation = fltExtendOfViolation;
	}

	/**
	 * @return the fltViolationSize
	 */
	public String getFltViolationSize() {
		return fltViolationSize;
	}

	/**
	 * @param fltViolationSize
	 *            the fltViolationSize to set
	 */
	public void setFltViolationSize(String fltViolationSize) {
		this.fltViolationSize = fltViolationSize;
	}

	/**
	 * @return the fltTrespassingFence
	 */
	public String getFltTrespassingFence() {
		return fltTrespassingFence;
	}

	/**
	 * @param fltTrespassingFence
	 *            the fltTrespassingFence to set
	 */
	public void setFltTrespassingFence(String fltTrespassingFence) {
		this.fltTrespassingFence = fltTrespassingFence;
	}

	/**
	 * @return the fltTrespassingWorks
	 */
	public String getFltTrespassingWorks() {
		return fltTrespassingWorks;
	}

	/**
	 * @param fltTrespassingWorks
	 *            the fltTrespassingWorks to set
	 */
	public void setFltTrespassingWorks(String fltTrespassingWorks) {
		this.fltTrespassingWorks = fltTrespassingWorks;
	}

	/**
	 * @return the fltMainActivity
	 */
	public String getFltMainActivity() {
		return fltMainActivity;
	}

	/**
	 * @param fltMainActivity
	 *            the fltMainActivity to set
	 */
	public void setFltMainActivity(String fltMainActivity) {
		this.fltMainActivity = fltMainActivity;
	}

	/**
	 * @return the fltBuildingBarcode
	 */
	public String getFltBuildingBarcode() {
		return fltBuildingBarcode;
	}

	/**
	 * @param fltBuildingBarcode
	 *            the fltBuildingBarcode to set
	 */
	public void setFltBuildingBarcode(String fltBuildingBarcode) {
		this.fltBuildingBarcode = fltBuildingBarcode;
	}

	/**
	 * @return the fltCurrentOwnerID
	 */
	public String getFltCurrentOwnerID() {
		return fltCurrentOwnerID;
	}

	/**
	 * @param fltCurrentOwnerID
	 *            the fltCurrentOwnerID to set
	 */
	public void setFltCurrentOwnerID(String fltCurrentOwnerID) {
		this.fltCurrentOwnerID = fltCurrentOwnerID;
	}

	/**
	 * @return the fltTrespassingFenceSize
	 */
	public double getFltTrespassingFenceSize() {
		return fltTrespassingFenceSize;
	}

	/**
	 * @param fltTrespassingFenceSize
	 *            the fltTrespassingFenceSize to set
	 */
	public void setFltTrespassingFenceSize(double fltTrespassingFenceSize) {
		this.fltTrespassingFenceSize = fltTrespassingFenceSize;
	}

	/**
	 * @return the fltTrespassingBuidlingSize
	 */
	public double getFltTrespassingBuidlingSize() {
		return fltTrespassingBuidlingSize;
	}

	/**
	 * @param fltTrespassingBuidlingSize
	 *            the fltTrespassingBuidlingSize to set
	 */
	public void setFltTrespassingBuidlingSize(double fltTrespassingBuidlingSize) {
		this.fltTrespassingBuidlingSize = fltTrespassingBuidlingSize;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UnitInformation [fltBuildingNo=" + fltBuildingNo + ", fltUnitNo=" + fltUnitNo + ", fltBuildType="
				+ fltBuildType + ", fltFloorNo=" + fltFloorNo + ", fltCurrentOwnerName=" + fltCurrentOwnerName
				+ ", fltDeliverDate=" + fltDeliverDate + ", fltAssignedName=" + fltAssignedName + ", fltAssignDate="
				+ fltAssignDate + ", fltUnitSize=" + fltUnitSize + ", fltUnitPrice=" + fltUnitPrice + ", fltFloor="
				+ fltFloor + ", fltComments=" + fltComments + ", fltBarcode=" + fltBarcode + ", fltChangeActivity="
				+ fltChangeActivity + ", fltTrespassingBuidling=" + fltTrespassingBuidling + ", fltExtendOfViolation="
				+ fltExtendOfViolation + ", fltViolationSize=" + fltViolationSize + ", fltTrespassingFence="
				+ fltTrespassingFence + ", fltTrespassingWorks=" + fltTrespassingWorks + ", fltMainActivity="
				+ fltMainActivity + ", fltBuildingBarcode=" + fltBuildingBarcode + ", fltCurrentOwnerID="
				+ fltCurrentOwnerID + ", fltTrespassingFenceSize=" + fltTrespassingFenceSize
				+ ", fltTrespassingBuidlingSize=" + fltTrespassingBuidlingSize + "]";
	}

}
