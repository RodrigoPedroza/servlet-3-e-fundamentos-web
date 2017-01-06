<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<c:choose>
		<c:when test="${usuario == null }">
			Usuario invalido
		</c:when>
		<c:when test="${usuario != null }">
			Usuario logado: ${usuario.email }
		</c:when>
	</c:choose>
	<br><a href="index.jsp">Voltar</a>
</body>
</html>