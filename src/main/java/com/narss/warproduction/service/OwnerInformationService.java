/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.OwnerInformation;

/**
 * @author ahmed.kotb
 *
 */
public interface OwnerInformationService {
	
	List<OwnerInformation> getAllOwnersInformation();

	boolean addOwnerInformation(OwnerInformation ownerInformation);

	boolean deleteOwnerInformation(String oiOwnerSequence);
}
