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
	
	Authorization getAuthorization(String maDelegationNo);

	boolean addAuthorization(Authorization authorization);
	
	boolean updateAuthorization(Authorization authorization);

	boolean deleteAuthorization(String maDelegationNo);
}
