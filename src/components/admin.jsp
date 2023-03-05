<%@ page import = "java.sql.*"%>
<% 
string idno = request.getParameter(idno);
string passwd = request.getParameter(passwd);
string fname = request.getParameter(fname);
string mname = request.getParameter(mname);
string sname = request.getParameter(sname);
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb/","root","");
    PreparedStatement ps = conn.prepareStatement("insert into admindb(idno,passwd,fname,lname,sname) values(?????)");
    ps.setString(1,idno);
    ps.setString(2,passwd);
    ps.setString(3,fname);
    ps.setString(4,mname);
    ps.setString(5,sname);
    int x = ps.executeUpdate();
}catch(Exception e)
{
    out.println(e);
}
%>