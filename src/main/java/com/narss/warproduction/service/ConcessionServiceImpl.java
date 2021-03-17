/**
 * 
 */
package com.narss.warproduction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.narss.warproduction.dao.ConcessionDAO;
import com.narss.warproduction.entity.Concession;

/**
 * @author ahmed.kotb
 *
 */
@Service
public class ConcessionServiceImpl implements ConcessionService {

	@Autowired
	ConcessionDAO concessionDAO;
	
    @Transactional
	public List<Concession> getAllConcessions() {
		return concessionDAO.getAllConcessions();
	}
    
    @Transactional
	public Concession getConcession(double coConcessionSerial) {
		return concessionDAO.getConcession(coConcessionSerial);
	}

    @Transactional
	public boolean addConcession(Concession concession) {
    	concessionDAO.addConcession(concession);
		return true;
	}
    
    @Transactional
	public boolean updateConcession(Concession concession) {
    	concessionDAO.updateConcession(concession);
		return true;
	}

    @Transactional
	public boolean deleteConcession(double coConcessionSerial) {
		return concessionDAO.deleteConcession(coConcessionSerial);
	}

}
