package org.hcl.dao;

import java.util.List;

import org.hcl.entities.PolicyData;
import org.hcl.entities.UserData;

public interface PolicyDao {

	public boolean insert(PolicyData policy);

	public PolicyData get(Integer PolicyId);

	public void edit(PolicyData policy);

	public List<PolicyData> getAllList();

	public List<PolicyData> getdatabyName(String criteria);

	public List<PolicyData> getdatabyType(String criteria);

	public List<PolicyData> getdatabyProvider(String criteria);

	public List<PolicyData> getdatabyAmount(Integer criteria);

	public List<PolicyData> getdatabyDuration(Integer criteria);
}
