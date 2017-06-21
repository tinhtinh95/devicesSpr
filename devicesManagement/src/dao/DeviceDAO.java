package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entities.Devices;

@Repository
public class DeviceDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Devices> getItems(){
		String sql="select *,c.name as cname, d.id as d_id from Devices as d "
				+ "inner join Account as a on a.id=d.idAccount "
				+ "inner join Category as c on c.id=d.idCat ";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper(Devices.class));
	}  

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Devices> getItemDetail(String id) {
		String sql="select *,c.name as cname, d.id as d_id from Devices as d "
				+ "inner join Account as a on a.id=d.idAccount "
				+ "inner join Category as c on c.id=d.idCat where d.id='"+"R01" +"'";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper(Devices.class));
	}
	

}