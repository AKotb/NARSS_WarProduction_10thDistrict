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
@Table(name = "mfcc_bulding_information")
public class BuildingInformation implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "bi_building_barcode")
	private String biBuildingBarcode;

	@Column(name = "bi_building_no")
	private String biBuildingNo;

	@Column(name = "bl_buidling_curr_no")
	private String biBuidlingCurrentNo;

	@Column(name = "bl_bld_model")
	private String biBuildingModel;

	@Column(name = "bi_no_floors")
	private String biNumberOfFloors;

	@Column(name = "bi_no_flats_per_floor")
	private String biNumberOfFlatsPerFloor;

	@Column(name = "bi_no_units")
	private String biNumberOfUnits;

	@Column(name = "bi_usage")
	private String biUsage;

	@Column(name = "bi_architectural_style")
	private String biArchitecturalStyle;

	@Column(name = "bi_status")
	private String biStatus;

	@Column(name = "bi_violations")
	private String biViolations;

	@Column(name = "bi_trespassing_bulding")
	private String biTrespassingBuilding;

	@Column(name = "bi_trespassing_fence")
	private String biTrespassingFence;

	@Column(name = "bi_trespassing_works")
	private String biTrespassingWorks;

	@Column(name = "bi_changing_activity")
	private String biChangingActivity;

	@Column(name = "bi_street_name")
	private String biStreetName;

	@Column(name = "bi_property_ownership")
	private String biPropertyOwnership;

	@Column(name = "bi_city_code")
	private String biCityCode;

	@Column(name = "bi_area_code")
	private String biAreaCode;

	@Column(name = "bi_regon_code")
	private String biRegionCode;

	@Column(name = "bi_zone_code")
	private String biZoneCode;

	@Column(name = "bi_sub_zone_code")
	private String biSubZoneCode;

	@Column(name = "bi_last_contract_date")
	private Date biLastContractDate;

	@Column(name = "bi_change_activity_date")
	private Date biChangeActivityDate;

	/**
	 * @return the biBuildingBarcode
	 */
	public String getBiBuildingBarcode() {
		return biBuildingBarcode;
	}

	/**
	 * @param biBuildingBarcode
	 *            the biBuildingBarcode to set
	 */
	public void setBiBuildingBarcode(String biBuildingBarcode) {
		this.biBuildingBarcode = biBuildingBarcode;
	}

	/**
	 * @return the biBuildingNo
	 */
	public String getBiBuildingNo() {
		return biBuildingNo;
	}

	/**
	 * @param biBuildingNo
	 *            the biBuildingNo to set
	 */
	public void setBiBuildingNo(String biBuildingNo) {
		this.biBuildingNo = biBuildingNo;
	}

	/**
	 * @return the biBuidlingCurrentNo
	 */
	public String getBiBuidlingCurrentNo() {
		return biBuidlingCurrentNo;
	}

	/**
	 * @param biBuidlingCurrentNo
	 *            the biBuidlingCurrentNo to set
	 */
	public void setBiBuidlingCurrentNo(String biBuidlingCurrentNo) {
		this.biBuidlingCurrentNo = biBuidlingCurrentNo;
	}

	/**
	 * @return the biBuildingModel
	 */
	public String getBiBuildingModel() {
		return biBuildingModel;
	}

	/**
	 * @param biBuildingModel
	 *            the biBuildingModel to set
	 */
	public void setBiBuildingModel(String biBuildingModel) {
		this.biBuildingModel = biBuildingModel;
	}

	/**
	 * @return the biNumberOfFloors
	 */
	public String getBiNumberOfFloors() {
		return biNumberOfFloors;
	}

	/**
	 * @param biNumberOfFloors
	 *            the biNumberOfFloors to set
	 */
	public void setBiNumberOfFloors(String biNumberOfFloors) {
		this.biNumberOfFloors = biNumberOfFloors;
	}

	/**
	 * @return the biNumberOfFlatsPerFloor
	 */
	public String getBiNumberOfFlatsPerFloor() {
		return biNumberOfFlatsPerFloor;
	}

	/**
	 * @param biNumberOfFlatsPerFloor
	 *            the biNumberOfFlatsPerFloor to set
	 */
	public void setBiNumberOfFlatsPerFloor(String biNumberOfFlatsPerFloor) {
		this.biNumberOfFlatsPerFloor = biNumberOfFlatsPerFloor;
	}

	/**
	 * @return the biNumberOfUnits
	 */
	public String getBiNumberOfUnits() {
		return biNumberOfUnits;
	}

	/**
	 * @param biNumberOfUnits
	 *            the biNumberOfUnits to set
	 */
	public void setBiNumberOfUnits(String biNumberOfUnits) {
		this.biNumberOfUnits = biNumberOfUnits;
	}

	/**
	 * @return the biUsage
	 */
	public String getBiUsage() {
		return biUsage;
	}

	/**
	 * @param biUsage
	 *            the biUsage to set
	 */
	public void setBiUsage(String biUsage) {
		this.biUsage = biUsage;
	}

	/**
	 * @return the biArchitecturalStyle
	 */
	public String getBiArchitecturalStyle() {
		return biArchitecturalStyle;
	}

	/**
	 * @param biArchitecturalStyle
	 *            the biArchitecturalStyle to set
	 */
	public void setBiArchitecturalStyle(String biArchitecturalStyle) {
		this.biArchitecturalStyle = biArchitecturalStyle;
	}

	/**
	 * @return the biStatus
	 */
	public String getBiStatus() {
		return biStatus;
	}

	/**
	 * @param biStatus
	 *            the biStatus to set
	 */
	public void setBiStatus(String biStatus) {
		this.biStatus = biStatus;
	}

	/**
	 * @return the biViolations
	 */
	public String getBiViolations() {
		return biViolations;
	}

	/**
	 * @param biViolations
	 *            the biViolations to set
	 */
	public void setBiViolations(String biViolations) {
		this.biViolations = biViolations;
	}

	/**
	 * @return the biTrespassingBuilding
	 */
	public String getBiTrespassingBuilding() {
		return biTrespassingBuilding;
	}

	/**
	 * @param biTrespassingBuilding
	 *            the biTrespassingBuilding to set
	 */
	public void setBiTrespassingBuilding(String biTrespassingBuilding) {
		this.biTrespassingBuilding = biTrespassingBuilding;
	}

	/**
	 * @return the biTrespassingFence
	 */
	public String getBiTrespassingFence() {
		return biTrespassingFence;
	}

	/**
	 * @param biTrespassingFence
	 *            the biTrespassingFence to set
	 */
	public void setBiTrespassingFence(String biTrespassingFence) {
		this.biTrespassingFence = biTrespassingFence;
	}

	/**
	 * @return the biTrespassingWorks
	 */
	public String getBiTrespassingWorks() {
		return biTrespassingWorks;
	}

	/**
	 * @param biTrespassingWorks
	 *            the biTrespassingWorks to set
	 */
	public void setBiTrespassingWorks(String biTrespassingWorks) {
		this.biTrespassingWorks = biTrespassingWorks;
	}

	/**
	 * @return the biChangingActivity
	 */
	public String getBiChangingActivity() {
		return biChangingActivity;
	}

	/**
	 * @param biChangingActivity
	 *            the biChangingActivity to set
	 */
	public void setBiChangingActivity(String biChangingActivity) {
		this.biChangingActivity = biChangingActivity;
	}

	/**
	 * @return the biStreetName
	 */
	public String getBiStreetName() {
		return biStreetName;
	}

	/**
	 * @param biStreetName
	 *            the biStreetName to set
	 */
	public void setBiStreetName(String biStreetName) {
		this.biStreetName = biStreetName;
	}

	/**
	 * @return the biPropertyOwnership
	 */
	public String getBiPropertyOwnership() {
		return biPropertyOwnership;
	}

	/**
	 * @param biPropertyOwnership
	 *            the biPropertyOwnership to set
	 */
	public void setBiPropertyOwnership(String biPropertyOwnership) {
		this.biPropertyOwnership = biPropertyOwnership;
	}

	/**
	 * @return the biCityCode
	 */
	public String getBiCityCode() {
		return biCityCode;
	}

	/**
	 * @param biCityCode
	 *            the biCityCode to set
	 */
	public void setBiCityCode(String biCityCode) {
		this.biCityCode = biCityCode;
	}

	/**
	 * @return the biAreaCode
	 */
	public String getBiAreaCode() {
		return biAreaCode;
	}

	/**
	 * @param biAreaCode
	 *            the biAreaCode to set
	 */
	public void setBiAreaCode(String biAreaCode) {
		this.biAreaCode = biAreaCode;
	}

	/**
	 * @return the biRegionCode
	 */
	public String getBiRegionCode() {
		return biRegionCode;
	}

	/**
	 * @param biRegionCode
	 *            the biRegionCode to set
	 */
	public void setBiRegionCode(String biRegionCode) {
		this.biRegionCode = biRegionCode;
	}

	/**
	 * @return the biZoneCode
	 */
	public String getBiZoneCode() {
		return biZoneCode;
	}

	/**
	 * @param biZoneCode
	 *            the biZoneCode to set
	 */
	public void setBiZoneCode(String biZoneCode) {
		this.biZoneCode = biZoneCode;
	}

	/**
	 * @return the biSubZoneCode
	 */
	public String getBiSubZoneCode() {
		return biSubZoneCode;
	}

	/**
	 * @param biSubZoneCode
	 *            the biSubZoneCode to set
	 */
	public void setBiSubZoneCode(String biSubZoneCode) {
		this.biSubZoneCode = biSubZoneCode;
	}

	/**
	 * @return the biLastContractDate
	 */
	public Date getBiLastContractDate() {
		return biLastContractDate;
	}

	/**
	 * @param biLastContractDate
	 *            the biLastContractDate to set
	 */
	public void setBiLastContractDate(Date biLastContractDate) {
		this.biLastContractDate = biLastContractDate;
	}

	/**
	 * @return the biChangeActivityDate
	 */
	public Date getBiChangeActivityDate() {
		return biChangeActivityDate;
	}

	/**
	 * @param biChangeActivityDate
	 *            the biChangeActivityDate to set
	 */
	public void setBiChangeActivityDate(Date biChangeActivityDate) {
		this.biChangeActivityDate = biChangeActivityDate;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BuildingInformation [biBuildingBarcode=" + biBuildingBarcode + ", biBuildingNo=" + biBuildingNo
				+ ", biBuidlingCurrentNo=" + biBuidlingCurrentNo + ", biBuildingModel=" + biBuildingModel
				+ ", biNumberOfFloors=" + biNumberOfFloors + ", biNumberOfFlatsPerFloor=" + biNumberOfFlatsPerFloor
				+ ", biNumberOfUnits=" + biNumberOfUnits + ", biUsage=" + biUsage + ", biArchitecturalStyle="
				+ biArchitecturalStyle + ", biStatus=" + biStatus + ", biViolations=" + biViolations
				+ ", biTrespassingBuilding=" + biTrespassingBuilding + ", biTrespassingFence=" + biTrespassingFence
				+ ", biTrespassingWorks=" + biTrespassingWorks + ", biChangingActivity=" + biChangingActivity
				+ ", biStreetName=" + biStreetName + ", biPropertyOwnership=" + biPropertyOwnership + ", biCityCode="
				+ biCityCode + ", biAreaCode=" + biAreaCode + ", biRegionCode=" + biRegionCode + ", biZoneCode="
				+ biZoneCode + ", biSubZoneCode=" + biSubZoneCode + ", biLastContractDate=" + biLastContractDate
				+ ", biChangeActivityDate=" + biChangeActivityDate + "]";
	}

}
