package com.idims.mapper;
import com.github.pagehelper.Page;
import com.idims.domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
@Mapper
public interface UserMapper {
    // 用户登录根据账户名和密码
    @Select("SELECT * FROM user WHERE username = #{username} AND password = #{password}")
    @Results(id = "userMap",value = {
            //id字段默认为false，表示不是主键
            //column表示数据库表字段，property表示实体类属性名。
            @Result(id = true,column = "id",property = "id"),
            @Result(column = "username",property = "username"),
            @Result(column = "password",property = "password"),
            @Result(column = "role",property = "role")
    })
    User login(User user);
    // 插入用户信息
    @Insert("INSERT INTO User (username, password, role) VALUES (#{username}, #{password}, #{role})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    void insertUser(User user);

    // 根据用户ID查询用户信息
    @Select("SELECT * FROM User WHERE id = #{id}")
    User getUserById(int id);

    // 根据用户名查询用户信息
    @Select("SELECT * FROM User WHERE username = #{username}")
    User getUserByUsername(String username);

    // 更新用户信息
    @Update("UPDATE User SET username = #{username}, password = #{password}, role = #{role} WHERE id = #{id}")
    void updateUser(User user);

    // 根据用户ID删除用户
    @Delete("DELETE FROM User WHERE id = #{id}")
    void deleteUser(int id);
}
