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
import com.narss.warproduction.entity.UnitInformation;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class UnitInformationDAOImpl implements UnitInformationDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<UnitInformation> getAllUnitsInformation() {
		List<UnitInformation> unitsInformation = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM UnitInformation");
			unitsInformation = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return unitsInformation;
		}

	}

	public boolean addUnitInformation(UnitInformation unitInformation) {
		Session session = factory.getCurrentSession();
		session.save(unitInformation);
		return true;
	}

	public boolean deleteUnitInformation(String fltBarcode) {
		Session session = factory.getCurrentSession();
		UnitInformation ui = session.get(UnitInformation.class, fltBarcode);
		session.delete(ui);
		return true;
	}

}
