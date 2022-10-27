<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Facemash</title>
	<style>
		header{
			background-color: darkred;
			color:white;
			font-size: 100px;
			text-align:center;
		}
		
		h2{
		text-align: center;
		}
		
		table{
		margin: 0 auto;
		}
		
	</style>
	</head>
<body>

	<header>FACEMASH</header>
	<h2>Who is better? Click to choose</h2>
	
	<%! String [] img = new String[7];%> 
	<% 
		img [0]="img/dybala2.jpg";
		img [1]="img/haaland.jpg";
		img [2]="img/lewa.jpg";
		img [3]="img/mbappe2.jpg";
		img [4]="img/messi.jpg";
		img [5]="img/neymar.jpg";
		img [6]="img/ronaldo.jpg";
		
		if (session.getAttribute("token") != "true"){
			int [] scelte = new int [7];
			session.setAttribute("voti", scelte);
		}
		
		
		Random rand = new Random();

		int casuale;

		int casuale2;

		do{
		casuale = rand.nextInt(img.length);
		casuale2 = rand.nextInt(img.length);
		}
		while(casuale == casuale2);

		String name = img[casuale];

		switch (name){
		case "img/dybala2.jpg":
		name = "Paulo Dybala";
		break;
		case "img/haaland.jpg":
		name = "Erling Braut Haaland";
		break;
		case "img/lewa.jpg":
		name = "Robert Lewandowski";
		break;
		case "img/mbappe2.jpg":
		name = "Kylian Mbappe";
		break;
		case "img/messi.jpg":
		name = "Lionel Messi";
		break;
		case "img/neymar.jpg":
		name = "Neymar Jr";
		break;
		case "img/ronaldo.jpg":
		name="Cristiano Ronaldo";
		break;
		}

		String name2 = img[casuale2];

		switch (name2){
		case "img/dybala2.jpg":
			name2 = "Paulo Dybala";
			break;
			case "img/haaland.jpg":
			name2 = "Erling Braut Haaland";
			break;
			case "img/lewa.jpg":
			name2 = "Robert Lewandowski";
			break;
			case "img/mbappe2.jpg":
			name2 = "Kylian Mbappe";
			break;
			case "img/messi.jpg":
			name2 = "Lionel Messi";
			break;
			case "img/neymar.jpg":
			name2 = "Neymar jr";
			break;
			case "img/ronaldo.jpg":
			name2="Cristiano Ronaldo";
			break;
		}

		%>
	<table>
   <tr>
     <td><a href="scelta.jsp?name=<%= name %>&immagine=<%=img[casuale]%>"><img src="<%= img[casuale] %>" width="250" height="250px"></a></td>
     <td>VS</td>
     <td><a href="scelta.jsp?name=<%= name2 %>&immagine=<%=img[casuale2]%>"><img src="<%= img[casuale2] %>" width="250px%" height="250px"></a></td>
   </tr>
</table>

</body>
</html>