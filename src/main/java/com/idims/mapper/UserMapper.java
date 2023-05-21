package com.idims.mapper;
import com.github.pagehelper.Page;
import com.idims.domain.User;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public interface UserMapper{
    @Select("select * from user where email=#{email} AND password=#{password}")
    @Results(id = "userMap",value = {
            //id字段默认为false，表示不是主键
            //column表示数据库表字段，property表示实体类属性名。
            @Result(id = true,column = "id",property = "user_id"),
            @Result(column = "username",property = "username"),
            @Result(column = "password",property = "password"),
            @Result(column = "email",property = "email"),
            @Result(column = "role",property = "role")
    })
    User login(User user);
}
