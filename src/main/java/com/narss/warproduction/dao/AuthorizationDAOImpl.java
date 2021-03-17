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
import com.narss.warproduction.entity.Authorization;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class AuthorizationDAOImpl implements AuthorizationDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<Authorization> getAllAuthorizations() {
		List<Authorization> authorizations = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM Authorization");
			authorizations = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return authorizations;
		}
	}
	
	@SuppressWarnings({ "unchecked", "finally" })
	public Authorization getAuthorization(String maDelegationNo) {
		List<Authorization> authorizations = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM Authorization WHERE maDelegationNo = :maDelegationNo");
			q.setParameter("maDelegationNo", maDelegationNo);
			authorizations = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return authorizations.get(0);
		}
	}

	public boolean addAuthorization(Authorization authorization) {
		Session session = factory.getCurrentSession();
		session.save(authorization);
		return true;
	}
	
	public boolean updateAuthorization(Authorization authorization) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(authorization);
		return true;
	}

	public boolean deleteAuthorization(String maDelegationNo) {
		Session session = factory.getCurrentSession();
		Authorization auz = session.get(Authorization.class, maDelegationNo);
		session.delete(auz);
		return true;
	}

}
