/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;

import com.narss.warproduction.entity.Key;

/**
 * @author ahmed.kotb
 *
 */
public interface KeyDAO {

	List<Key> getAllKeys();
	
	Key getKey(String keyAll);

	boolean addKey(Key key);
	
	boolean updateKey(Key key);

	boolean deleteKey(String keyAll);

}
