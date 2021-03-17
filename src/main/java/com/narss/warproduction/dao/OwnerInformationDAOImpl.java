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
import com.narss.warproduction.entity.OwnerInformation;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class OwnerInformationDAOImpl implements OwnerInformationDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<OwnerInformation> getAllOwnersInformation() {
		List<OwnerInformation> ownersInformation = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM OwnerInformation");
			ownersInformation = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return ownersInformation;
		}
	}
	
	@SuppressWarnings({ "unchecked", "finally" })
	public OwnerInformation getOwnerInformation(String oiOwnerSequence) {
		List<OwnerInformation> ownersInformation = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM OwnerInformation WHERE oiOwnerSequence = :oiOwnerSequence");
			q.setParameter("oiOwnerSequence", oiOwnerSequence);
			ownersInformation = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return ownersInformation.get(0);
		}
	}

	public boolean addOwnerInformation(OwnerInformation ownerInformation) {
		Session session = factory.getCurrentSession();
		session.save(ownerInformation);
		return true;
	}
	
	public boolean updateOwnerInformation(OwnerInformation ownerInformation) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(ownerInformation);
		return true;
	}

	public boolean deleteOwnerInformation(String oiOwnerSequence) {
		Session session = factory.getCurrentSession();
		OwnerInformation oi = session.get(OwnerInformation.class, oiOwnerSequence);
		session.delete(oi);
		return true;
	}

}
