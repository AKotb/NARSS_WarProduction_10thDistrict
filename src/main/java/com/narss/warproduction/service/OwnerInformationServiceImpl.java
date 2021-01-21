/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.OwnerInformationDAO;
import com.narss.warproduction.entity.OwnerInformation;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class OwnerInformationServiceImpl implements OwnerInformationService {

	@Autowired
	OwnerInformationDAO ownerInformationDAO;
	
    @Transactional
	public List<OwnerInformation> getAllOwnersInformation() {
		return ownerInformationDAO.getAllOwnersInformation();
	}

    @Transactional
	public boolean addOwnerInformation(OwnerInformation ownerInformation) {
    	ownerInformationDAO.addOwnerInformation(ownerInformation);
		return true;
	}

    @Transactional
	public boolean deleteOwnerInformation(String oiOwnerSequence) {
		return ownerInformationDAO.deleteOwnerInformation(oiOwnerSequence);
	}

}
