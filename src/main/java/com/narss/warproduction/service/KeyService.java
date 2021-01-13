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

	boolean addKey(Key key);

	boolean deleteKey(String keyAll);
}
