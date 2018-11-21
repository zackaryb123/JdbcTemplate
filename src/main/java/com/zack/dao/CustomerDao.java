package com.zack.dao;

import com.zack.model.Customer;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CustomerDao {
    JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int saveCustomer(Customer c){
        System.out.println(c.toString());
        return jdbcTemplate.update("insert into CUSTOMER VALUES ("+c.getId()+",'"+c.getName()+"','"+c.getAddress()+"',"+c.getAge()+")");
    }

    public int delete(int cid){
        return jdbcTemplate.update("delete from CUSTOMER WHERE ID = "+ cid);
    }


    public  Customer getbyId(int cid){
        return jdbcTemplate.query("select * from CUSTOMER WHERE ID = "+cid, new RowMapper<Customer>() {
            public Customer mapRow(ResultSet rs, int row) throws SQLException {
                Customer c = new Customer();
                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setAddress(rs.getString(3));
                c.setAge(rs.getInt(4));
                return c;
            }
        }).get(0);
    }

    public List<Customer> getDetails() {
        return jdbcTemplate.query("select * from CUSTOMER", new RowMapper<Customer>() {
            public Customer mapRow(ResultSet rs, int row) throws SQLException {
                Customer c = new Customer();
                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setAddress(rs.getString(3));
                c.setAge(rs.getInt(4));
                return c;
            }
        });
    }

    public int updateAddress(Customer c){
        return jdbcTemplate.update("update CUSTOMER SET ADDRESS = '"+c.getAddress()+"' where ID = "+c.getId());
    }
}
