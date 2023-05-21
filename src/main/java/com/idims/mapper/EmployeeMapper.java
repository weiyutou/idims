package com.idims.mapper;

import com.idims.domain.Employee;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/18 下午 5:08
 */
@Repository
@Component
public interface EmployeeMapper {
    @Select("SELECT * FROM employee")
    @Results(id = "employeeMap", value = {
            //id字段默认为false，表示不是主键
            //column表示数据库表字段，property表示实体类属性名。
            @Result(id = true,column = "employee_id",property = "employeeId"),
            @Result(column = "name",property = "name"),
            @Result(column = "position",property = "position"),
            @Result(column = "salary",property = "salary"),
            @Result(column = "phone",property = "phone"),
            @Result(column = "address",property = "address"),
            @Result(column = "branch_id",property = "branchId")
    })
    List<Employee> getAllEmployees();

    @Select("SELECT * FROM employees WHERE id = #{id}")
    Employee getEmployeeById(int id);

    @Insert("INSERT INTO employees (name, department, salary) VALUES (#{name}, #{department}, #{salary})")
    void addEmployee(Employee employee);

    @Update("UPDATE employees SET name = #{name}, department = #{department}, salary = #{salary} WHERE id = #{id}")
    void updateEmployee(Employee employee);

    @Delete("DELETE FROM employees WHERE id = #{id}")
    void deleteEmployee(int id);
}
