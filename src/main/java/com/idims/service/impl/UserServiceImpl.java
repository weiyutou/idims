package com.idims.service.impl;

import com.idims.domain.User;
import com.idims.mapper.UserMapper;
import com.idims.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author coli
 * @date 2023/5/16 下午 11:24
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User login(User user) {
        return userMapper.login(user);
    }
}
