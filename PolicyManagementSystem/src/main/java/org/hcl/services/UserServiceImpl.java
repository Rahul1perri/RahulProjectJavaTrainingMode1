package org.hcl.services;

import java.time.LocalDate;
import java.util.List;

import javax.transaction.Transactional;

import org.hcl.dao.UserDao;
import org.hcl.entities.UserData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userdao;

	@Override
	public void insert(UserData user) {
		userdao.insert(user);
	}

	@Override
	public boolean validate(String userId, String password) {
		return userdao.validate(userId, password);
	}

	@Override
	public List<UserData> getAllList() {
		return userdao.getAllList();
	}

	@Override
	public UserData getData(Integer userId) {
		return userdao.getData(userId);
	}

	@Override
	public UserData getUser(String userId) {
		return userdao.getUser(userId);
	}

	@Override
	public void updateDate(Integer id, LocalDate date) {
		userdao.updateDate(id, date);
	}

	@Override
	public void pay(Integer id) {
		userdao.pay(id);
	}

}
