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
import com.narss.warproduction.entity.SubZone;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class SubZoneDAOImpl implements SubZoneDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<SubZone> getAllSubZones() {
		List<SubZone> subZones = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM SubZone");
			subZones = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return subZones;
		}

	}

	public boolean addSubZone(SubZone subZone) {
		Session session = factory.getCurrentSession();
		session.save(subZone);
		return true;
	}

	public boolean deleteSubZone(String azCity, String azAreaCode, String azRegionCode, String azZoneCode, String azSubZoneCode) {
		Session session = factory.getCurrentSession();
		Query q = session.createQuery("delete from SubZone where azCity = :azcity and azAreaCode = :azareacode and azRegionCode = :azregioncode and azZoneCode = :azzonecode and azSubZoneCode = :azsubzonecode");
		q.setParameter("azcity", azCity);
		q.setParameter("azareacode", azAreaCode);
		q.setParameter("azregioncode", azRegionCode);
		q.setParameter("azzonecode", azZoneCode);
		q.setParameter("azsubzonecode", azSubZoneCode);
		q.executeUpdate();
		return true;
	}

}
