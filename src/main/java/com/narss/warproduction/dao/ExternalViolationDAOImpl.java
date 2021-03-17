/**
 * 
 */
package com.narss.warproduction.dao;

import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.narss.warproduction.entity.ExternalViolation;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class ExternalViolationDAOImpl implements ExternalViolationDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<ExternalViolation> getAllExternalViolations() {
		List<ExternalViolation> externalViolations = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM ExternalViolation");
			externalViolations = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return externalViolations;
		}
	}
	
	@SuppressWarnings({ "unchecked", "finally" })
	public ExternalViolation getExternalViolation(String evNewViolationNo) {
		List<ExternalViolation> externalViolations = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM ExternalViolation WHERE evNewViolationNo = :evNewViolationNo");
			q.setParameter("evNewViolationNo", evNewViolationNo);
			externalViolations = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return externalViolations.get(0);
		}
	}

	public boolean addExternalViolation(ExternalViolation externalViolation) {
		Session session = factory.getCurrentSession();
		session.save(externalViolation);
		return true;
	}
	
	public boolean updateExternalViolation(ExternalViolation externalViolation) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(externalViolation);
		return true;
	}

	public boolean deleteExternalViolation(String evNewViolationNo) {
		Session session = factory.getCurrentSession();
		ExternalViolation ev = session.get(ExternalViolation.class, evNewViolationNo);
		session.delete(ev);
		return true;
	}

}
