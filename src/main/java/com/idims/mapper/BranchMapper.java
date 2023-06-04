package com.idims.mapper;

/**
 * @author coli
 * @date 2023/5/28 下午 4:38
 */
import com.idims.domain.Branch;
import com.idims.domain.Employee;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface BranchMapper {
    /*通过id查找分公司*/
    @Select("SELECT * FROM branch WHERE branch_id = #{branchId}")
    @Results(id = "branchssMap",value = {
            @Result(id = true, column = "branch_id", property = "branchId"),
            @Result(column = "name", property = "name"),
            @Result(column = "manager", property = "manager"),
            @Result(column = "office_phone", property = "officePhone"),
            @Result(column = "address", property = "address")
    })
    Branch getBranchById(Integer branchId);

    /*查询所有分公司*/
    @Select("SELECT * FROM branch")
    @Results(id = "branchMap",value = {
            @Result(id = true, column = "branch_id", property = "branchId"),
            @Result(column = "name", property = "name"),
            @Result(column = "manager", property = "manager"),
            @Result(column = "date", property = "date"),
            @Result(column = "office_phone", property = "officePhone"),
            @Result(column = "address", property = "address")
    })
    List<Branch> getAllBranches();

    /*新增分公司*/
    @Insert("INSERT INTO branch(name, manager, office_phone, address) " +
            "VALUES(#{name}, #{manager}, #{officePhone}, #{address})")
    @Options(useGeneratedKeys = true, keyProperty = "branchId")
    void addBranch(Branch branch);

    /*修改分公司信息*/
    @Update("UPDATE branch SET name = #{name}, manager = #{manager}, date = #{date}," +
            "office_phone = #{officePhone}, address = #{address} WHERE branch_id = #{branchId}")
    void updateBranch(Branch branch);

    /*删除分公司*/
    @Delete("DELETE FROM branch WHERE branch_id = #{branchId}")
    void deleteBranch(int branchId);
}
