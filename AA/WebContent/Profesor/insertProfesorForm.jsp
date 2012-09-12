<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="md.*"%>
<%@ page import="md.victordov.lab.vo.*"%>
<%@ page import="md.victordov.lab.common.exception.MyDaoException"%>
<%@ page import="md.victordov.lab.dao.ProfesorDAO"%>
<%@ page import="md.victordov.lab.services.GenericService"%>
<%@ page import="md.victordov.lab.services.ProfesorService"%>
<%@ page import="md.victordov.lab.vo.Profesor"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>
<%@ include file="/headerJSP.jsp"%>

<form method="post" action="insertProfesor.jsp">
	<%
		GenericService<Profesor> genService = new ProfesorService(
				new ProfesorDAO());
		Profesor univ = new Profesor();
		ArrayList<Profesor> arrayProf = new ArrayList<Profesor>();
		arrayProf = genService.getAll();
	%>
	<table>
		<caption>Profesor Insert</caption>
		<th>ID</th>
		<th>Nume</th>
		<th>Prenume</th>
		<th>Adresa</th>
		<tr>
			<td><input type="text" name="id"
				value="<%=genService.getAll().size() + 1%>"></td>
			<td><input type="text" name="Nume" value=""></td>
			<td><input type="text" name="Prenume" value=""></td>
			<td><input type="text" name="Adresa" value=""></td>
		</tr>
		<tr>
			<td><input type="submit" name="Submit" value="Insert"
				style="background-color: #49743D; font-weight: bold; color: #ffffff;"></td>
		</tr>

	</table>
</form>

<!-- Footer -->
<%@ include file="/footerJSP.jsp"%>