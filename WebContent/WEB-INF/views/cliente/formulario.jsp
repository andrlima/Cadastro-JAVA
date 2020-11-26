<!DOCTYPE html>
<html>
	
	<head>
		<title> Cadastrar Clientes </title>
	</head>
	
	<body>
		
		<h1> Cadastrar Cliente </h1>
			
		<form action="adicionarCliente" method="post">
				
			NOME <input type="text" name="nome" /> <br/><br/>
				
			CPF <input type="text" name="cpf" /> <br/><br/>
				
			DATA DE NASCIMENTO <input type="text" name="dataNascimento" /> <br/><br/>
				
			TELEFONE <input type="text" name="telefone" /> <br/><br/>
				
			E-MAIL <input type="email" name="email" /> <br/><br/>
				
			NOME PAI <input type="text" name="nomePai" /> <br/><br/>
				
			NOME MÃE <input type="text" name="nomeMae" /> <br/><br/>
				
			<input type="submit" value="Cadastrar"/>
			
		</form>
			
		<br/> <a href="listarCliente"> Lista de clientes </a>
	
	</body>

</html>