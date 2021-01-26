/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.AuthorizationDAO;
import com.narss.warproduction.entity.Authorization;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class AuthorizationServiceImpl implements AuthorizationService {

	@Autowired
	AuthorizationDAO authorizationDAO;
	
    @Transactional
	public List<Authorization> getAllAuthorizations() {
		return authorizationDAO.getAllAuthorizations();
	}

    @Transactional
	public boolean addAuthorization(Authorization authorization) {
    	authorizationDAO.addAuthorization(authorization);
		return true;
	}

    @Transactional
	public boolean deleteAuthorization(String maDelegationNo) {
		return authorizationDAO.deleteAuthorization(maDelegationNo);
	}

}
