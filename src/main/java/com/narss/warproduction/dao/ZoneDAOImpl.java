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
import com.narss.warproduction.entity.Zone;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class ZoneDAOImpl implements ZoneDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<Zone> getAllZones() {
		List<Zone> zones = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM Zone");
			zones = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return zones;
		}

	}

	public boolean addZone(Zone zone) {
		Session session = factory.getCurrentSession();
		session.save(zone);
		return true;
	}

	public boolean deleteZone(String zonCity, String areaCode, String regionCode, String zoneCode) {
		Session session = factory.getCurrentSession();
		Query q = session.createQuery("delete from Zone where zonCity = :zoncity and areaCode = :areacode and regionCode = :regioncode and zoneCode = :zonecode");
		q.setParameter("zoncity", zonCity);
		q.setParameter("areacode", areaCode);
		q.setParameter("regioncode", regionCode);
		q.setParameter("zonecode", zoneCode);
		q.executeUpdate();
		return true;
	}

}
