<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
Bem vindo ao nosso gerenciador de empresas!

<c:if test="${usuarioLogado != null}">
	<p>Voce esta logado como: ${usuarioLogado.email }</p>
</c:if>

<form action="executa" method="post">
	<input type="hidden" value="BuscaEmpresa" name="tarefa">
	Filtro: <input type="text" name="filtro"><br>
	<input type="submit" value="Buscar">
</form>

<form action="executa" method="post">
	<input type="hidden" value="NovaEmpresa" name="tarefa">
	Nome: <input type="text" name="nome"><br>
	<input type="submit" value="Enviar">
</form>

<form action="executa" method="post">
	<input type="hidden" value="Login" name="tarefa">
	Email: <input type="text" name="email">
	Senha: <input type="password" name="senha">
	<input type="submit" value="Enviar">
</form>

<form action="executa" method="post">
	<input type="hidden" value="Logout" name="tarefa">
	<input type="submit" value="Deslogar">
</form>

</body>
</html>