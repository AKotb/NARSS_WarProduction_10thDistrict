/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.Authorization;

/**
 * @author ahmed.kotb
 *
 */
public interface AuthorizationDAO {

	List<Authorization> getAllAuthorizations();

	boolean addAuthorization(Authorization authorization);

	boolean deleteAuthorization(String maDelegationNo);

}
