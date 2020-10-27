package org.hcl.dao;

import java.time.LocalDate;
import java.util.List;

import org.hcl.entities.PolicyData;
import org.hcl.entities.UserData;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory factory;

	@Override
	public void insert(UserData user) {
		Session session = factory.openSession();
		session.save(user);

	}

	@Override
	public boolean validate(String userId, String password) {
		Session session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(UserData.class);
		criteria.add(Restrictions.like("userId", userId));
		boolean flag = false;
		Object result = criteria.uniqueResult();
		if (result != null) {
			UserData user = (UserData) result;
			if (user.getPassword().equalsIgnoreCase(password)) {
				flag = true;
			} else {
				flag = false;
			}
		}
		return flag;
	}

	@Override
	public List<UserData> getAllList() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("FROM UserData");
		return query.list();

	}

	@Override
	public UserData getData(Integer userId) {
		Session session = factory.getCurrentSession();
		return (UserData) session.get(UserData.class, userId);

	}

	@Override
	public UserData getUser(String userId) {
		Session session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(UserData.class);
		criteria.add(Restrictions.like("userId", userId));
		Object result = criteria.uniqueResult();
		UserData user = (UserData) result;
		return user;
	}

	@Override
	public void updateDate(Integer id, LocalDate date) {
		Session session = factory.getCurrentSession();
		String update = "update UserData userdata set userdata.enrollementDate=:ed where userdata.id=:Id";
		Query query = session.createQuery(update);
		query.setParameter("ed", date);
		query.setParameter("Id", id);
		query.executeUpdate();
	}

	@Override
	public void pay(Integer id) {
		Session session = factory.getCurrentSession();
		String update = "update UserData userdata set userdata.paymentStatus='paid' where userdata.id=:Id";
		Query query = session.createQuery(update);
		query.setParameter("Id", id);
		query.executeUpdate();

	}

}
