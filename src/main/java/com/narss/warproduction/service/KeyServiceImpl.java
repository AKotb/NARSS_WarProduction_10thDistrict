/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.KeyDAO;
import com.narss.warproduction.entity.Key;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class KeyServiceImpl implements KeyService {

	@Autowired
	KeyDAO keyDAO;

	@Transactional
	public List<Key> getAllKeys() {
		return keyDAO.getAllKeys();
	}

	@Transactional
	public Key getKey(String keyAll) {
		return keyDAO.getKey(keyAll);
	}
	
	@Transactional
	public boolean addKey(Key key) {
		keyDAO.addKey(key);
		return true;
	}
	
	@Transactional
	public boolean updateKey(Key key) {
		keyDAO.updateKey(key);
		return true;
	}

	@Transactional
	public boolean deleteKey(String keyAll) {
		return keyDAO.deleteKey(keyAll);
	}

}
