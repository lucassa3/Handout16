<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<html>
<body>
   <table width="300px" border="1px" bordercolor="black">
      <tr>
         <th>Id</th>
         <th>Descrição</th>
         <th>Finalizado</th>
         <th>Data de finalização</th>
         <th>Remover</th>
         <th>Alterar</th>
      </tr>
      <c:forEach items="${tarefas}" var="tarefa">
         <tr>
  
            <td>${tarefa.id}</td>
            <td>${tarefa.descricao}</td>	
            <c:if test="${tarefa.finalizado eq false}">
               <td>Não finalizada</td>
            </c:if>
            <c:if test="${tarefa.finalizado eq true}">
               <td>Finalizado</td>
            </c:if>
				
            <td>
               <fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy"/>
            </td>
            
	        <td align = "center">
	           <a href="removeTarefa?id=${tarefa.id}" style = "text-decoration:none; color: blue">Remover</a>
	        </td>
       
            <td align = "center">
            <a href="mostraTarefa?id=${tarefa.id}" style = "text-decoration:none ; color: blue">Alterar</a>
            </td>
   
         </tr>
      </c:forEach>
   </table>
</body>
</html>