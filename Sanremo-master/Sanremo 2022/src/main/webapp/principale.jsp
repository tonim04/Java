<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*"%>
<%@ page import="Sanremo.Artista"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<meta charset="ISO-8859-1">
		<title>Sanremo 2022</title>
		<style>
		header{
			background-color: blue;
			color:white;
			font-size: 100px;
			text-align:center;
			font-family: 'Josefin Sans', sans-serif;
		}
		</style>
	</head>

<body>
	<header>Sanremo 2022</header>
	
	<%
		
	
		Locale locale = request.getLocale(); //istanzia l'oggetto
		String language = locale.getLanguage(); //chiamo metodo lingua
		String country = locale.getCountry(); //chiamo metodo paese
		
		session.setAttribute("lingua", language);
		session.setAttribute("stato", country);
		
		HashMap<String, String> Lingua = new HashMap<String, String>();
		
		Lingua.put("italiano", "Vota ora");
		Lingua.put("english", "Vote now");
		
		String chiave ="";
		
		if(language.equals("it")){
			 chiave = "italiano";
		} else{
			 chiave = "english";
		}
	
		int i=0;
		int conta=0;
		
		ArrayList<Artista> cantanti = (ArrayList<Artista>)session.getAttribute("cantanti");
		
	%>
	
	<br><br>
	<center>
	<div class="container">
		<% for(i=0; i<20; i++){  %>
		
		<% if (conta == 0){%>
			<div class="row">
		<% } %>
				<div class="col">
					<div class="card" style="width: 250px; margin-bottom: 30px;">
				  		<img src="<%= cantanti.get(i).getImmagine()%>" class="card-img-top" height="200" width="200">
				  		<div class="card-body">
				    		<h5 class="card-title"><%= cantanti.get(i).getNome() %></h5>
				    		<p class="card-text"><%= cantanti.get(i).getCanzone() %></p>
				    		<div class="row">
				    			<div class="col"><h6 style="color: red"><%= cantanti.get(i).getNegativi() %></h6></div>
				    			<div class="col"><h6 style="color: green"><%= cantanti.get(i).getPositivi() %></h6></div>
				    		</div>
				    		<div>
					    		<%
					    		    String temp = cantanti.get(i).getUltimovoto();
					    			if(temp.equals("")){
					    				
					    			} else {
					    				out.print("<div style=\"color: gray\" class=\"col\"><h6>" + cantanti.get(i).getUltimovoto() + "</h6></div>");
					    			}
					    		%>
				    		</div>
				    		<a href="votazioni.jsp?indice=<%= i %>"><button type="button" class="btn btn-primary"><%= Lingua.get(chiave) %></button></a>
				    		<%conta++; %>
				  		</div>
					</div>
				</div>
			
				
		<% if (conta == 4){
			conta=0;
		%>
			</div>
		<% } %>
		<% } %><a href="index.jsp"><button type="button" class="btn btn-danger">Cancella i voti</button></center></a><br>
	</div>
</body>
</html>