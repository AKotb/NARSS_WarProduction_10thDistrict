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
import com.narss.warproduction.entity.RegionCode;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class RegionCodeDAOImpl implements RegionCodeDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<RegionCode> getAllRegionCodes() {
		List<RegionCode> regionCodes = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM RegionCode");
			regionCodes = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return regionCodes;
		}
	}
	
	@SuppressWarnings({ "unchecked", "finally" })
	public RegionCode getRegionCode(String cityCode, String areaCode, String regionCode) {
		List<RegionCode> regionCodes = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM RegionCode WHERE rcCityCode = :citycode AND rcAreaCode = :areacode AND rcRegionCode = :regioncode");
			q.setParameter("citycode", cityCode);
			q.setParameter("areacode", areaCode);
			q.setParameter("regioncode", regionCode);
			regionCodes = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return regionCodes.get(0);
		}
	}

	public boolean addRegionCode(RegionCode regionCode) {
		Session session = factory.getCurrentSession();
		session.save(regionCode);
		return true;
	}
	
	public boolean updateRegionCode(RegionCode regionCode) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(regionCode);
		return true;
	}

	public boolean deleteRegionCode(String cityCode, String areaCode, String regionCode) {
		Session session = factory.getCurrentSession();
		Query q = session.createQuery("delete from RegionCode where rcCityCode = :citycode and rcAreaCode = :areacode and rcRegionCode = :regioncode ");
		q.setParameter("citycode", cityCode);
		q.setParameter("areacode", areaCode);
		q.setParameter("regioncode", regionCode);
		q.executeUpdate();
		return true;
	}

}
