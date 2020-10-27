package org.hcl.dao;

import java.util.List;

import org.hcl.entities.PolicyData;
import org.hcl.entities.UserData;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

@Repository
public class PolicyDaoImpl implements PolicyDao {

	@Autowired
	SessionFactory factory;

	@Override
	public boolean insert(PolicyData policy) {
		Session session = factory.openSession();
		int i = (Integer) session.save(policy);
		if (i == policy.getPolicyId()) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public PolicyData get(Integer PolicyId) {
		Session session = factory.getCurrentSession();
		return (PolicyData) session.get(PolicyData.class, PolicyId);
	}

	@Override
	public void edit(PolicyData policy) {
		Session session = factory.getCurrentSession();
		PolicyData policy1 = (PolicyData) session.get(PolicyData.class, policy.getPolicyId());
		policy1.setPolicyName(policy.getPolicyName());
		policy1.setPolicyType(policy.getPolicyType());
		policy1.setPolicyProvider(policy.getPolicyProvider());
		policy1.setPolicyDuration(policy.getPolicyDuration());
		policy1.setPolicyDueDate(policy.getPolicyDueDate());
		policy1.setPolicyAmount(policy.getPolicyAmount());
		session.save(policy1);

	}

	@Override
	public List<PolicyData> getAllList() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("FROM PolicyData");
		return query.list();
	}

	@Override
	public List<PolicyData> getdatabyName(String criteria) {
		Session session = factory.getCurrentSession();
		Criteria criteri = session.createCriteria(PolicyData.class);
		criteri.add(Restrictions.like("policyName", criteria));
		List<PolicyData> list = criteri.list();
		return list;
	}

	@Override
	public List<PolicyData> getdatabyType(String criteria) {
		Session session = factory.getCurrentSession();
		Criteria criteri = session.createCriteria(PolicyData.class);
		criteri.add(Restrictions.like("policyType", criteria));
		List<PolicyData> list = criteri.list();
		return list;
	}

	@Override
	public List<PolicyData> getdatabyProvider(String criteria) {
		Session session = factory.getCurrentSession();
		Criteria criteri = session.createCriteria(PolicyData.class);
		criteri.add(Restrictions.like("policyProvider", criteria));
		List<PolicyData> list = criteri.list();
		return list;
	}

	@Override
	public List<PolicyData> getdatabyDuration(Integer criteria) {
		Session session = factory.getCurrentSession();
		Criteria criteri = session.createCriteria(PolicyData.class);
		criteri.add(Restrictions.like("policyDuration", criteria));
		List<PolicyData> list = criteri.list();
		return list;
	}

	@Override
	public List<PolicyData> getdatabyAmount(Integer criteria) {
		Session session = factory.getCurrentSession();
		Criteria criteri = session.createCriteria(PolicyData.class);
		criteri.add(Restrictions.like("policyAmount", criteria));
		List<PolicyData> list = criteri.list();
		return list;

	}
}
