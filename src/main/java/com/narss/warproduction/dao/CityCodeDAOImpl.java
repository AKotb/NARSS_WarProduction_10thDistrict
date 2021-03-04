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
import com.narss.warproduction.entity.CityCode;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class CityCodeDAOImpl implements CityCodeDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<CityCode> getAllCityCodes() {
		List<CityCode> cityCodes = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM CityCode");
			cityCodes = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return cityCodes;
		}

	}
	
	@SuppressWarnings({ "finally" })
	public CityCode getCityCode(String cityCode) {
		CityCode cityCodeObj = null;
		try {
			Session session = factory.getCurrentSession();
			cityCodeObj = session.get(CityCode.class, cityCode);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return cityCodeObj;
		}
	}

	public boolean addCityCode(CityCode cityCode) {
		Session session = factory.getCurrentSession();
		session.save(cityCode);
		return true;
	}
	
	public boolean updateCityCode(CityCode cityCode) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(cityCode);
		return true;
	}

	public boolean deleteCityCode(String cityCode) {
		Session session = factory.getCurrentSession();
		CityCode cc = session.get(CityCode.class, cityCode);
		session.delete(cc);

		return true;
	}

}
