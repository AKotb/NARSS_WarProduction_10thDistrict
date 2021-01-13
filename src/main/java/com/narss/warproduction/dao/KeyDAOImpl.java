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
import com.narss.warproduction.entity.Key;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class KeyDAOImpl implements KeyDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<Key> getAllKeys() {
		List<Key> keys = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM Key");
			keys = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return keys;
		}

	}

	public boolean addKey(Key key) {
		Session session = factory.getCurrentSession();
		session.save(key);
		return true;
	}

	public boolean deleteKey(String keyAll) {
		Session session = factory.getCurrentSession();
		Query q = session.createQuery("delete from Key where keyAll = :keyall");
		q.setParameter("keyall", keyAll);
		q.executeUpdate();
		return true;
	}

}
