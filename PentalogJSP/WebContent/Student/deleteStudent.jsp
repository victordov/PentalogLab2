<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="md.*"%>
<%@ page import="md.victordov.lab.vo.*"%>
<%@ page import="md.victordov.lab.common.exception.MyDaoException"%>
<%@ page import="md.victordov.lab.dao.StudentDAO"%>
<%@ page import="md.victordov.lab.services.GenericService"%>
<%@ page import="md.victordov.lab.services.StudentService"%>
<%@ page import="md.victordov.lab.vo.Student"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>

<html>
<head>
<link href="<%=request.getContextPath()%>/style.css" rel="stylesheet"
	type="text/css">
<title>Profesor Delete</title>
</head>
<body>
	
	<%
		GenericService<Student> genService = new StudentService(
				new StudentDAO());
		Student univ = new Student();
		String idStudentString = request.getParameter("id");
		Long idStudent = Long.parseLong(idStudentString);

		if (genService.deleteFunction(idStudent) == true) {
	%>
	<p>A fost sters</p>

	<%
		} else {
	%>
	<p>Eroare, nu a putut fi sters</p>
	<%
		}
	%>

	<a href="<%=request.getContextPath()%>/Student/StudentJSP.jsp">Apasa
		aici: <strong>Student</strong>
	</a>


	<!-- Footer -->
	<%@ include file="/footerJSP.jsp"%>