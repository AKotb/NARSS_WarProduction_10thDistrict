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
import com.narss.warproduction.entity.BuildingInformation;

/**
 * @author ahmed.kotb
 *
 */
@Repository
public class BuildingInformationDAOImpl implements BuildingInformationDAO {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings({ "unchecked", "finally" })
	public List<BuildingInformation> getAllBuildingsInformation() {
		List<BuildingInformation> buildingsInformation = null;
		try {
			Session session = factory.getCurrentSession();
			Query q = session.createQuery("FROM BuildingInformation");
			buildingsInformation = q.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return buildingsInformation;
		}

	}

	public boolean addBuildingInformation(BuildingInformation buildingInformation) {
		Session session = factory.getCurrentSession();
		session.save(buildingInformation);
		return true;
	}

	public boolean deleteBuildingInformation(String biBuildingBarcode) {

		Session session = factory.getCurrentSession();
		BuildingInformation bi = session.get(BuildingInformation.class, biBuildingBarcode);
		session.delete(bi);
		return true;
	}

}
