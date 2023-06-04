package com.idims.mapper;

import com.idims.domain.Employee;
import com.idims.domain.ParcelApplication;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 7:31
 */
@Mapper
public interface ParcelApplicationMapper {
    /*
    * 分页查找快件申请表
    * */
    @Select("SELECT * FROM parcelapplication LIMIT #{offset}, #{limit}")
    @Results(id = "parMap",value = {
            @Result(id = true,column = "application_id",property = "applicationId"),
            @Result(column = "customer_id",property = "customerId"),
            @Result(column = "sender",property = "sender"),
            @Result(column = "sender_phone",property = "senderPhone"),
            @Result(column = "parcel_name",property = "parcelName"),
            @Result(column = "freight",property = "freight"),
            @Result(column = "origin",property = "origin"),
            @Result(column = "recipient",property = "recipient"),
            @Result(column = "recipient_phone",property = "recipientPhone"),
            @Result(column = "delivery_address",property = "deliveryAddress"),
            @Result(column = "status",property = "status"),
            @Result(column = "date",property = "date")
    })
    List<ParcelApplication> getParcelApplicationsByPage(@Param("offset") int offset, @Param("limit") int limit);

    /*
    * 查找全部快件申请表，无分页查询（已弃用）
    * */
    @Select("SELECT * FROM parcelapplication")
    @Results(id = "parsMap",value = {
            @Result(id = true,column = "application_id",property = "applicationId"),
            @Result(column = "customer_id",property = "customerId"),
            @Result(column = "sender",property = "sender"),
            @Result(column = "sender_phone",property = "senderPhone"),
            @Result(column = "parcel_name",property = "parcelName"),
            @Result(column = "freight",property = "freight"),
            @Result(column = "origin",property = "origin"),
            @Result(column = "recipient",property = "recipient"),
            @Result(column = "recipient_phone",property = "recipientPhone"),
            @Result(column = "delivery_address",property = "deliveryAddress"),
            @Result(column = "status",property = "status"),
            @Result(column = "date",property = "date")
    })
    List<ParcelApplication> All();

    /*
    * 添加快件申请表
    * */
    @Insert("INSERT INTO parcelapplication(customer_id, sender, sender_phone, parcel_name, freight, origin, recipient, recipient_phone, delivery_address, status, date) " +
            "VALUES(#{customerId}, #{sender}, #{senderPhone}, #{parcelName}, #{freight}, #{origin}, #{recipient}, #{recipientPhone}, #{deliveryAddress}, #{status}, #{date})")
    @Options(useGeneratedKeys = true, keyProperty = "applicationId")
    void addParcelApplication(ParcelApplication parcelApplication);


    /*
    * 修改快件申请表信息
    * */
    @Update("UPDATE parcelapplication SET customer_id = #{customerId}, sender = #{sender}, sender_phone = #{senderPhone}, " +
            "parcel_name = #{parcelName}, freight = #{freight}, origin = #{origin}, recipient = #{recipient}, " +
            "recipient_phone = #{recipientPhone}, delivery_address = #{deliveryAddress}, status = #{status} " +
            "WHERE application_id = #{applicationId}")
    void updateParcelApplication(ParcelApplication parcelApplication);

    /*
    * 删除快件申请表
    * */
    @Delete("DELETE FROM parcelapplication WHERE application_id = #{applicationId}")
    void deleteParcelApplication(int applicationId);

    @Update("UPDATE parcelapplication SET status = #{newStatus} WHERE application_id = #{applicationId}")
    int updateStatus(@Param("applicationId") int applicationId, @Param("newStatus") int newStatus);

    @Select("SELECT * FROM parcelapplication WHERE customer_id = 8")
    @Results(id = "parsbyidMap",value = {
            @Result(id = true,column = "application_id",property = "applicationId"),
            @Result(column = "customer_id",property = "customerId"),
            @Result(column = "sender",property = "sender"),
            @Result(column = "sender_phone",property = "senderPhone"),
            @Result(column = "parcel_name",property = "parcelName"),
            @Result(column = "freight",property = "freight"),
            @Result(column = "origin",property = "origin"),
            @Result(column = "recipient",property = "recipient"),
            @Result(column = "recipient_phone",property = "recipientPhone"),
            @Result(column = "delivery_address",property = "deliveryAddress"),
            @Result(column = "status",property = "status"),
            @Result(column = "date",property = "date")
    })
    List<ParcelApplication> findByCustomerId();

    @Select("SELECT * FROM parcelapplication WHERE customer_id = 8")
    @Results(id = "parsbydMap",value = {
            @Result(id = true,column = "application_id",property = "applicationId"),
            @Result(column = "customer_id",property = "customerId"),
            @Result(column = "sender",property = "sender"),
            @Result(column = "sender_phone",property = "senderPhone"),
            @Result(column = "parcel_name",property = "parcelName"),
            @Result(column = "freight",property = "freight"),
            @Result(column = "origin",property = "origin"),
            @Result(column = "recipient",property = "recipient"),
            @Result(column = "recipient_phone",property = "recipientPhone"),
            @Result(column = "delivery_address",property = "deliveryAddress"),
            @Result(column = "status",property = "status"),
            @Result(column = "date",property = "date")
    })
    List<ParcelApplication> findByCustomerIds();

    @Select("SELECT * FROM parcelapplication WHERE application_id LIKE CONCAT('%', #{name}, '%')")
    @Results(id = "parsbyiiidMap",value = {
            @Result(id = true,column = "application_id",property = "applicationId"),
            @Result(column = "customer_id",property = "customerId"),
            @Result(column = "sender",property = "sender"),
            @Result(column = "sender_phone",property = "senderPhone"),
            @Result(column = "parcel_name",property = "parcelName"),
            @Result(column = "freight",property = "freight"),
            @Result(column = "origin",property = "origin"),
            @Result(column = "recipient",property = "recipient"),
            @Result(column = "recipient_phone",property = "recipientPhone"),
            @Result(column = "delivery_address",property = "deliveryAddress"),
            @Result(column = "status",property = "status"),
            @Result(column = "date",property = "date")
    })
    List<ParcelApplication> searchApplicationId(@Param("name") String name);

}
