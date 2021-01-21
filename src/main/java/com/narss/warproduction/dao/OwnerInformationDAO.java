/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.OwnerInformation;

/**
 * @author ahmed.kotb
 *
 */
public interface OwnerInformationDAO {

	List<OwnerInformation> getAllOwnersInformation();

	boolean addOwnerInformation(OwnerInformation ownerInformation);

	boolean deleteOwnerInformation(String oiOwnerSequence);

}
