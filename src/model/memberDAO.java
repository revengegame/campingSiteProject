package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class memberDAO {//컨트롤러 역할
	//오라클 드라이버 설정
    String driver="oracle.jdbc.OracleDriver";
	String id="system";
	String pass="oraclejava";
	String url="jdbc:oracle:thin:@localhost:1521:xe";

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	//데이터 베이스에 접근하는 방식
	public void getConnection() throws SQLException {
    try {
		Class.forName(driver);//try catch형식
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	conn= DriverManager.getConnection(url,id,pass);//throw형식
	}
	
	public void insertMember(memberBean mbean) {//memberBean클래스의 mbean사용
	try {
		getConnection();//db연결
	
	//실행 명령어
	String sql="insert into teammember values(?,?,?,?,?,?,?,?)";
	pstmt =conn.prepareStatement(sql);

	//?에 맞게 데이터를 매핑시켜준다
	pstmt.setString(1, mbean.getId());//rs.getId()
	pstmt.setString(2, mbean.getPass1());
	pstmt.setString(3, mbean.getEmail());
	pstmt.setString(4, mbean.getTel());
	pstmt.setString(5, mbean.getHobby());
	pstmt.setString(6, mbean.getJob());
	pstmt.setString(7, mbean.getAge());
	pstmt.setString(8, mbean.getInfo());

	pstmt.executeUpdate();//insert,update,delete
    conn.commit();
	conn.close();//연결종료
	}catch(Exception e) {
		e.printStackTrace();
	}
}
	//모든 회원의 정보를 반환해주는 메소드 호출
	public Vector<memberBean> allselectmember(){//vector로 리턴
		Vector<memberBean> v=new Vector<>();//객체v
		
		try {
			getConnection();
		
		//실행 명령어
		String sql="select * from teammember";
		pstmt =conn.prepareStatement(sql);

		rs=pstmt.executeQuery();//쿼리결과
		
		while(rs.next()) {//차례대로
			memberBean mbean=new memberBean();
			
			
		//rs객체에 저장된 주소에 가서 맞는 데이터를 매핑
			mbean.setId(rs.getString(1));
			mbean.setPass1(rs.getString(2));
			mbean.setEmail(rs.getString(3));
			mbean.setTel(rs.getString(4));
			mbean.setHobby(rs.getString(5));
			mbean.setJob(rs.getString(6));
			mbean.setAge(rs.getString(7));
			mbean.setInfo(rs.getString(8));
         v.add(mbean);//v객체에 mbean내용 넣기
		}
		conn.close();//연결종료
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		
		
		
		return v;
		
	}
	//해당 아이디의 정보를 반환해주는 메소드 역할
	public memberBean oneselectmember(String id) {//id가져오기
	    memberBean mbean=new memberBean();
	try {
		getConnection();
		
		String sql="select * from teammember where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs=pstmt.executeQuery();
		
		if(rs.next()) {
			mbean.setId(rs.getString(1));
			mbean.setPass1(rs.getString(2));
			mbean.setEmail(rs.getString(3));
			mbean.setTel(rs.getString(4));
			mbean.setHobby(rs.getString(5));
			mbean.setJob(rs.getString(6));
			mbean.setAge(rs.getString(7));
			mbean.setInfo(rs.getString(8));
		}
		conn.commit();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	return mbean;
	}	
	
	//한명의 회원의 패스워드값을 반환해주는 메소드 역할
	public String getPass(String id) {
		String pass="";
		
		try{
			getConnection();
			
			String sql="select pass1 from teammember where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				pass=rs.getString(1);
			}
			if(conn!=null) 
				conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return pass;
	
	}
	
	//아이디에 해당하는 회원 정보를 수정
	public void updatemember(memberBean mbean) {
		try {
			getConnection();
			
		String sql="update teammember set email=?, tel=? where id=?";	
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, mbean.getEmail());
		pstmt.setString(2, mbean.getTel());
		pstmt.setString(3, mbean.getId());
		
		pstmt.executeUpdate();
		
		if(conn!=null) {
			conn.commit();
			conn.close();
		}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		//해당 아이디 지우기
		public void deletemember(String id) {
			try {
				getConnection();
				
				String sql="delete from teammember where id=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				
				if(conn!=null) {
					conn.commit();
					conn.close();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
	
	
	
}