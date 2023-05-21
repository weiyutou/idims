package com.idims.service;

import com.idims.domain.User;
import org.springframework.stereotype.Service;

/**
 * @author coli
 * @date 2023/5/16 下午 11:22
 */
@Service
public interface UserService {
    User login(User user);
}
