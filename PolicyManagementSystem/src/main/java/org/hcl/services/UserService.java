package org.hcl.services;

import java.time.LocalDate;
import java.util.List;

import org.hcl.entities.UserData;

public interface UserService {

	public void insert(UserData user);

	public boolean validate(String userId, String password);

	public List<UserData> getAllList();

	public UserData getData(Integer userId);

	public UserData getUser(String userId);

	public void updateDate(Integer id, LocalDate date);

	public void pay(Integer id);

}
