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
import com.narss.warproduction.entity.Concession;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class ConcessionDAOImpl implements ConcessionDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<Concession> getAllConcessions() {
		List<Concession> concessions = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM Concession");
			concessions = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return concessions;
		}
	}
	
	@SuppressWarnings({ "unchecked", "finally" })
	public Concession getConcession(double coConcessionSerial) {
		List<Concession> concessions = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM Concession WHERE coConcessionSerial = :coConcessionSerial");
			q.setParameter("coConcessionSerial", coConcessionSerial);
			concessions = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return concessions.get(0);
		}
	}

	public boolean addConcession(Concession concession) {
		Session session = factory.getCurrentSession();
		session.save(concession);
		return true;
	}
	
	public boolean updateConcession(Concession concession) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(concession);
		return true;
	}

	public boolean deleteConcession(double coConcessionSerial) {
		Session session = factory.getCurrentSession();
		Concession conc = session.get(Concession.class, coConcessionSerial);
		session.delete(conc);
		return true;
	}

}
