package com.idims.mapper;

import com.github.pagehelper.Page;
import com.idims.domain.Branch;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


/**
 * @author coli
 * @date 2023/5/18 下午 5:06
 */
public interface BranchMapper {
    @Select("select * from branch")
    @Results(id = "branchMap", value = {
            //id字段默认为false，表示不是主键
            //column表示数据库表字段，property表示实体类属性名。
            @Result(id = true,column = "branch_id",property = "branchId"),
            @Result(column = "branch_name",property = "branchName"),
            @Result(column = "manager_name",property = "managerName"),
            @Result(column = "manager_id",property = "managerId"),
            @Result(column = "office_phone",property = "officePhone"),
            @Result(column = "address",property = "address")
    })
    Page<Branch> selectBranch();
}
