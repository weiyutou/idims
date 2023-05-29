package com.idims.mapper;

import com.idims.domain.Employee;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 上午 12:19
 */
@Mapper
public interface EmployeeMapper {
    @Select("SELECT * FROM employee")
    @Results(id = "userMap",value = {
            @Result(id = true,column = "employee_id",property = "employeeId"),
            @Result(column = "name",property = "name"),
            @Result(column = "position",property = "position"),
            @Result(column = "salary",property = "salary"),
            @Result(column = "phone_number",property = "phoneNumber"),
            @Result(column = "home_address",property = "homeAddress"),
            @Result(column = "branch_id",property = "branchId"),
    })
    List<Employee> getAllEmployees();

    @Select("SELECT * FROM employee WHERE name LIKE CONCAT('%', #{name}, '%')")
    @Results(id = "usersMap",value = {
            @Result(id = true,column = "employee_id",property = "employeeId"),
            @Result(column = "name",property = "name"),
            @Result(column = "position",property = "position"),
            @Result(column = "salary",property = "salary"),
            @Result(column = "phone_number",property = "phoneNumber"),
            @Result(column = "home_address",property = "homeAddress"),
            @Result(column = "branch_id",property = "branchId"),
    })
    List<Employee> searchEmployeesByName(@Param("name") String name);

    @Select("SELECT * FROM employee WHERE employee_id = #{employeeId}")
    @Results(id = "useridMap",value = {
            @Result(id = true,column = "employee_id",property = "employeeId"),
            @Result(column = "name",property = "name"),
            @Result(column = "position",property = "position"),
            @Result(column = "salary",property = "salary"),
            @Result(column = "phone_number",property = "phoneNumber"),
            @Result(column = "home_address",property = "homeAddress"),
            @Result(column = "branch_id",property = "branchId"),
    })
    Employee getEmployeeById(Integer employeeId);

    @Insert("INSERT INTO employee (employee_id, name, position, salary, phone_number, home_address, branch_id) " +
            "VALUES (#{employeeId}, #{name}, #{position}, #{salary}, #{phoneNumber}, #{homeAddress}, #{branchId})")
    @Options(useGeneratedKeys = true, keyProperty = "employeeId")
    void addEmployee(Employee employee);

    @Update("UPDATE employee SET name = #{name}, position = #{position}, salary = #{salary}, " +
            "phone_number = #{phoneNumber}, home_address = #{homeAddress}, branch_id = #{branchId} " +
            "WHERE employee_id = #{employeeId}")
    void updateEmployee(Employee employee);

    @Delete("DELETE FROM employee WHERE employee_id = #{employeeId}")
    void deleteEmployee(int employeeId);
}
