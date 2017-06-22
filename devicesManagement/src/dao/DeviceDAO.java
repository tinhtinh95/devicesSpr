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
		String sql="select d.id as id, c.id as idCat, a.id as idAccount,"
				+ "d.name,d.warranty, d.price, d.made_in, d.picture,c.name as cname from Devices as d "
				+ "inner join Account as a on a.id=d.idAccount "
				+ "inner join Category as c on c.id=d.idCat ";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper(Devices.class));
	}  

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<Devices> getItemDetail(String id) {
		String sql="select a.id as idAccount,username, status, isnew,"
				+ "d.name,seri_number from Devices as d "
				+ "inner join Account as a on a.id=d.idAccount "
				+ " where d.id='"+id +"'";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper(Devices.class));
	}
	
	public int addItem(Devices objItem) {
		String sql="insert into Devices(id, seri_number,name,idAccount,idCat,made_in,price,warranty,isnew,status,picture) value (?,?,?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql, new Object[]{objItem.getId(),objItem.getSeri_number(),
				objItem.getName(),objItem.getIdAccount(),objItem.getIdCat(),
				objItem.getMade_in(),objItem.getPrice(),objItem.getWarranty(),
				objItem.getIsnew(),objItem.getStatus(),"picture"});
	}

//	@SuppressWarnings({ "unchecked", "rawtypes" })
//	public Devices checkDevices(String name) {
//		String sql="select name from Devices where name= ?";
//		try{
//			return (Devices) jdbcTemplate.queryForObject(sql,new Object[]{name},new BeanPropertyRowMapper(Devices.class));
//		}catch(Exception e){
//			return null;
//		}
//	}
//	
//	@SuppressWarnings({ "unchecked", "rawtypes" })
//	public Devices getItem(int id) {
//		String sql="select * from Devices where id=?";
//		return (Devices) jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper(Devices.class));
//	}
//
//	public int editItem(Devices objItem) {
//		String sql="update Devices set name=? where id=?";
//		return jdbcTemplate.update(sql, new Object[]{objItem.getName(),objItem.getId()});
//	}
//	
//	public int delItem(int id) {
//		String sql="delete from Devices where id=?";
//		return jdbcTemplate.update(sql, new Object[]{id});
//	}

}