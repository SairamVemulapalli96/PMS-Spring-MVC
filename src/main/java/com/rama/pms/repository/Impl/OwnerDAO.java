package com.rama.pms.repository.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rama.pms.model.Owner;
import com.rama.pms.repository.DAO;

@Repository
public class OwnerDAO implements DAO<Owner> {
	
	Logger logger = Logger.getLogger(OwnerDAO.class);
	
	private JdbcTemplate jdbcTemplate;
	
	public OwnerDAO(JdbcTemplate jdbcTemplate) 
	{
		super();
		logger.info("OwnerDAO() instantiated, jdbcTemplate=" + jdbcTemplate);
		this.jdbcTemplate=jdbcTemplate;
	}

	@Override
	public List<Owner> getAll() {
		
		logger.info("getAll() invoked");
		
		String sql = "SELECT * FROM OWNERS";
		
		List<Owner> ownerList = new ArrayList<>();
		
		ownerList =  jdbcTemplate.query(sql, (rs, rowNum) -> {
			return ownerRowMapper(rs);
		});
		
		logger.info("contactList :: " + ownerList);
		
		return ownerList;
	}
	
	private Owner ownerRowMapper(ResultSet rs) throws SQLException 
	{
		Owner o = new Owner();
		
		o.setOid(rs.getInt("OID"));
		o.setName(rs.getString("NAME"));
		o.setAge(rs.getInt("AGE"));
		o.setGender(rs.getString("Gender"));
		o.setEmail(rs.getString("Email"));
		return o;
	}

}
