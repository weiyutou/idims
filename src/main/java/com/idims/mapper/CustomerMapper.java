package com.idims.mapper;

import com.idims.domain.Customer;
import com.idims.domain.Employee;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 6:17
 */
@Mapper
public interface CustomerMapper {
    @Insert("INSERT INTO customer (company_name, address, province, contact_name, contact_phone, bank_account) " +
            "VALUES (#{companyName}, #{address}, #{province}, #{contactName}, #{contactPhone}, #{bankAccount})")
    void addCustomer(Customer customer);

    @Update("UPDATE customer SET company_name = #{customer.companyName}, address = #{customer.address}, province = #{customer.province}, " +
            "contact_name = #{customer.contactName}, contact_phone = #{customer.contactPhone}, bank_account = #{customer.bankAccount} " +
            "WHERE customer_id = #{customer.customerId}")
    void updateCustomer(@Param("customer") Customer customer);

    @Delete("DELETE FROM customer WHERE customer_id = #{customerId}")
    void deleteCustomer(@Param("customerId") Integer customerId);

    @Select("SELECT * FROM customer WHERE customer_id = #{customerId}")
    Customer getCustomerById(@Param("customerId") int customerId);

    @Select("SELECT * FROM customer")
    @Results(id = "customerMap",value = {
            @Result(id = true,column = "customer_id",property = "customerId"),
            @Result(column = "company_name",property = "companyName"),
            @Result(column = "address",property = "address"),
            @Result(column = "province",property = "province"),
            @Result(column = "contact_name",property = "contactName"),
            @Result(column = "contact_phone",property = "contactPhone"),
            @Result(column = "bank_account",property = "bankAccount"),
    })
    List<Customer> getAllCustomers();

    @Select("SELECT * FROM customer WHERE company_name LIKE CONCAT('%', #{name}, '%')")
    @Results(id = "customersMap",value = {
            @Result(id = true,column = "customer_id",property = "customerId"),
            @Result(column = "company_name",property = "companyName"),
            @Result(column = "address",property = "address"),
            @Result(column = "province",property = "province"),
            @Result(column = "contact_name",property = "contactName"),
            @Result(column = "contact_phone",property = "contactPhone"),
            @Result(column = "bank_account",property = "bankAccount"),
    })
    List<Customer> searchCusByName(@Param("name") String name);
}
