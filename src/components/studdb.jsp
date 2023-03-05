<%@ page import = "java.sql.*"%>
<% 
string idno = request.getParameter(idno);
string passwd = request.getParameter(passwd);
string fname = request.getParameter(fname);
string mname = request.getParameter(mname);
string sname = request.getParameter(sname);
string class = request.getParameter(class);
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb/studentdata","root","");
    PreparedStatement ps = conn.prepareStatement("insert into  studentdata(idno,passwd,fname,lname,sname,class),values(??????)");
    ps.setString(1,idno);
    ps.setString(2,passwd);
    ps.setString(3,fname);
    ps.setString(4,mname);
    ps.setString(5,sname);
    ps.setString(6,class);
    int x = ps.executeUpdate();
}catch(Exception e)
{
    out.println(e);
}
%>