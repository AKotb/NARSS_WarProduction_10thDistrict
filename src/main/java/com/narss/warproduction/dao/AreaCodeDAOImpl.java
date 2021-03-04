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
import com.narss.warproduction.entity.AreaCode;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class AreaCodeDAOImpl implements AreaCodeDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<AreaCode> getAllAreaCodes() {
		List<AreaCode> areaCodes = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM AreaCode");
			areaCodes = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return areaCodes;
		}
	}
	
	@SuppressWarnings({ "finally", "unchecked" })
	public AreaCode getAreaCode(String cityCode, String areaCode) {
		List<AreaCode> areaCodes = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM AreaCode WHERE arCityCode = :citycode AND arAreaCode = :areacode ");
			q.setParameter("citycode", cityCode);
			q.setParameter("areacode", areaCode);
			areaCodes = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return areaCodes.get(0);
		}
	}

	public boolean addAreaCode(AreaCode areaCode) {
		Session session = factory.getCurrentSession();
		session.save(areaCode);
		return true;
	}
	
	public boolean updateAreaCode(AreaCode areaCode) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(areaCode);
		return true;
	}

	public boolean deleteAreaCode(String cityCode, String areaCode) {
		Session session = factory.getCurrentSession();
		Query q = session.createQuery("delete from AreaCode where arCityCode = :citycode and arAreaCode = :areacode ");
		q.setParameter("citycode", cityCode);
		q.setParameter("areacode", areaCode);
		q.executeUpdate();
		return true;
	}

}
