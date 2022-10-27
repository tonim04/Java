<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Scelta</title>
	<style>
	header{
		    background-color: darkred;
			color:white;
			font-size: 100px;
			text-align:center;
		}
		
	</style>
	
	<% 
		String scelta = request.getParameter("name"); //da il parametro name alla variabile stringa scelta
		int [] voti = (int [])session.getAttribute("voti"); //converte l'oggetto della sessione dal tipo sessione a int
		
		switch(scelta) {
			case "Paulo Dybala":
				voti[0] += 1;
				break;
			case "Erling Braut Haaland":
				voti[1] += 1;
				break;
			case "Robert Lewandowski":
				voti[2] += 1;
				break;
			case "Kylian Mbappe":
				voti[3] += 1;
				break;
			case "Lionel Messi":
				voti[4] += 1;
				break;
			case "Neymar Jr":
				voti[5] += 1;
				break;
			case "Cristiano Ronaldo":
				voti[6] += 1;
				break;
		}
		
		session.setAttribute("voti", voti);
		session.setAttribute("token", "true");
		
	%>
	
	</head>
	
<body>
	<header>FACEMASH</header>

	<center><p>Il calciatore selezionato è:  </p><h3><%= request.getParameter("name") %></h3></center>
	<center><img src="<%=request.getParameter("immagine") %>" width="250px" height="250px"></center>
	<center><h3><a href="index.jsp">Torna alla Home</a></h3></center>
	<center><h3><a href="votazioni.jsp">Votazioni</a></h3></center>

</body>
</html>
