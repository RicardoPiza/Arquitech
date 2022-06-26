package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAO {
	String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://127.0.0.1:3306/GrupoG?useTimezone=true&serverTimezone=UTC";
    String user = "root";
    String password = "45243253";
    JavaBeans dados = new JavaBeans();

        public Connection conectar() {
        	Connection con = null;
            try {
                Class.forName(driver);
                con = DriverManager.getConnection(url, user, password);
                return con;
            } catch (Exception e) {
                System.out.println(e);
                return null;
            }
        }
        public void salvarForm(JavaBeans dados) {
        	String create = "insert into dadosForm (sel1Check1,sel1Check2,sel1Check3,sel1Check4,sel1Check5,sel1Check6,sel1Check7,sel2Check1,sel2Check2,sel3Check1,sel3Check2,sel3Check3,sel4Check1,sel4Check2, tempo, apr, comp, parc, tipo, nome, medida, obs)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";        	
        	try {
        		Connection con = conectar();
				PreparedStatement pst = con.prepareStatement(create);
				pst.setString(1, dados.getSel1Check1());
				pst.setString(2, dados.getSel1Check2());
				pst.setString(3, dados.getSel1Check3());
				pst.setString(4, dados.getSel1Check4());
				pst.setString(5, dados.getSel1Check5());
				pst.setString(6, dados.getSel1Check6());
				pst.setString(7, dados.getSel1Check7());
				pst.setString(8, dados.getSel2Check1());
				pst.setString(9, dados.getSel2Check2());
				pst.setString(10, dados.getSel3Check1());
				pst.setString(11, dados.getSel3Check2());
				pst.setString(12, dados.getSel3Check3());
				pst.setString(13, dados.getSel4Check1());
				pst.setString(14, dados.getSel4Check2());
				pst.setString(15, dados.getTempo());
				pst.setString(16, dados.getApr());
				pst.setString(17, dados.getComp());
				pst.setString(18, dados.getParc());
				pst.setString(19, dados.getTipo());
				pst.setString(20, dados.getNome());
				pst.setString(21, dados.getMedida());
				pst.setString(22, dados.getObs());
				pst.executeUpdate();
				pst.close();
			} catch (SQLException e) {
				System.out.println("erro2");
				System.out.println(e);
			}
        }
        
        public void listarForm(String sql) {
        	String read = "select * from dadosForm where id = (?)";
        	try {
        		Connection con = conectar();
				PreparedStatement pst = con.prepareStatement(read);
				pst.setString(1, dados.getSel1Check1());
				pst.executeUpdate();
				pst.close();				
				
			} catch (Exception e) {
				// TODO: handle exception
			}
        	
        	
        }
        public void alterarForm(String sql) {
        	
        }
        public void excluirForm(String sql) {
        	
        }
}
