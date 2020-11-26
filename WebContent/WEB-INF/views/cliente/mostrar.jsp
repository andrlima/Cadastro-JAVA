<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

	<body>
	
		<h3>Alterar Cliente - ${cliente.id}</h3>
		
		<form action="atualizarCliente" method="post">
		
			<input type="hidden" name="id" value="${cliente.id}" />
		
			NOME <input type="text" name="nome" value="${cliente.nome}" /> <br/><br/>
				
			CPF <input type="text" name="cpf" value="${cliente.cpf}" /> <br/><br/>
		
			DATA DE NASCIMENTO <input type="text" name="dataNascimento" value="<fmt:formatDate value="${cliente.dataNascimento.time}" pattern="dd/MM/yyyy" />"/>
			<br /><br/>
				
			TELEFONE <input type="text" name="telefone" value="${cliente.telefone}" /> <br/><br/>
				
			E-MAIL <input type="email" name="email" value="${cliente.email}" />  <br/><br/>
				
			NOME PAI <input type="text" name="nomePai" value="${cliente.nomePai}" /> <br/><br/> 
				
			NOME MÃE <input type="text" name="nomeMae" value="${cliente.nomeMae}" /> <br/><br/>

			<input type="submit" value="Alterar"/>
			
		</form>
		
		<a href="novoCliente"> Cadastrar </a><br/>
		<a href="listarCliente"> Listar de clientes </a>
		
	</body>
	
</html>