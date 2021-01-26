/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.Authorization;

/**
 * @author ahmed.kotb
 *
 */
public interface AuthorizationService {
	
	List<Authorization> getAllAuthorizations();

	boolean addAuthorization(Authorization authorization);

	boolean deleteAuthorization(String maDelegationNo);
}
