package org.hcl.services;

import java.util.List;

import org.hcl.entities.PolicyData;

public interface PolicyService {

	public boolean insert(PolicyData policy);

	public PolicyData get(Integer policyId);

	public void edit(PolicyData policy);

	public List<PolicyData> getAllList();

	public List<PolicyData> getdatabyName(String criteria);

	public List<PolicyData> getdatabyType(String criteria);

	public List<PolicyData> getdatabyProvider(String criteria);

	public List<PolicyData> getdatabyAmount(Integer criteria);

	public List<PolicyData> getdatabyDuration(Integer criteria);
}
