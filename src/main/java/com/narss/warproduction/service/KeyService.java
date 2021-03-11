/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import com.narss.warproduction.entity.Key;

/**
 * @author ahmed.kotb
 *
 */
public interface KeyService {

	List<Key> getAllKeys();
	
	Key getKey(String keyAll);

	boolean addKey(Key key);
	
	boolean updateKey(Key key);

	boolean deleteKey(String keyAll);
}
