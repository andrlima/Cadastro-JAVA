<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>

	<body>
	
		<a href="novoCliente">Adicionar novo cliente </a>
		
		<br /> <br />
		<table>
		
			<tr>
				<th> ID </th>
				<th> Nome </th>
				<th> Cpf </th>
				<th> .</th>
				<th> Data de nascimento </th>
				<th> Telefone </th>
				<th> E-mail </th>
				<th> Nome pai </th>
				<th> Nome mãe </th>
			</tr>
			
			<c:forEach items="${cliente}" var="cliente">
			
				<tr>
					<td>${cliente.id}</td>
					<td>${cliente.nome}</td>
					<td>${cliente.cpf}</td>
					
					<td> </td>

					<td>
						<fmt:formatDate
						value="${cliente.dataNascimento.time}"
						pattern="dd/MM/yyyy"/>
					</td>
					
					<td>${cliente.telefone}</td>
					<td>${cliente.nomePai}</td>
					<td>${cliente.nomeMae}</td>
					
					<td><a href="excluirCliente?id=${cliente.id}">Remover</a></td><td></td>
					<td><a href="mostrarCliente?id=${cliente.id}">Alterar</a></td>
					
				</tr>
				
			</c:forEach>
			
		</table>
		
	</body>
	
</html>