package org.hcl.services;

import java.util.List;

import javax.transaction.Transactional;

import org.hcl.dao.PolicyDao;

import org.hcl.entities.PolicyData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class PolicyServiceImpl implements PolicyService {

	@Autowired
	PolicyDao policydao;

	@Override
	public boolean insert(PolicyData policy) {
		boolean status = policydao.insert(policy);
		return status;
	}

	@Override
	public PolicyData get(Integer policyId) {
		PolicyData policydata = policydao.get(policyId);
		return policydata;
	}

	@Override
	public void edit(PolicyData policy) {
		policydao.edit(policy);

	}

	@Override
	public List<PolicyData> getAllList() {
		return policydao.getAllList();
	}

	@Override
	public List<PolicyData> getdatabyName(String criteria) {

		return policydao.getdatabyName(criteria);
	}

	@Override
	public List<PolicyData> getdatabyType(String criteria) {

		return policydao.getdatabyType(criteria);
	}

	@Override
	public List<PolicyData> getdatabyProvider(String criteria) {
		return policydao.getdatabyProvider(criteria);
	}

	@Override
	public List<PolicyData> getdatabyDuration(Integer criteria) {

		return policydao.getdatabyDuration(criteria);
	}

	@Override
	public List<PolicyData> getdatabyAmount(Integer criteria) {

		return policydao.getdatabyAmount(criteria);
	}

}
