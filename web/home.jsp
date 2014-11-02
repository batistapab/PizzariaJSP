<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ include file="WEB-INF/jspf/includes/topo.jspf" %>
<%@ include file="WEB-INF/jspf/includes/menu.jspf" %>
<%@ include file="WEB-INF/jspf/includes/menuEsquerdo.jspf" %>
<div class="sectiongroupAdmin"> 
    <% System.out.println(session.getAttribute("nome")); %>
</div>

<%@ include file="WEB-INF/jspf/includes/seguranca.jspf" %>
<%@ include file="WEB-INF/jspf/includes/javascripts.jspf" %>
<%@ include file="WEB-INF/jspf/includes/footer.jspf" %>

