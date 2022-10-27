<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
		<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
		<meta charset="ISO-8859-1">
		<title>Voti totali</title>
		
		<style>
		header{
		    background-color: darkred;
			color:white;
			font-size: 100px;
			text-align:center;
		}
		
		</style>
		
		<%
			int [] voti = (int[]) session.getAttribute("voti"); //converte i voti dal tipo sessione a intero
			
		%>
		
		
	</head>
	
<body>

	<header>FACEMASH</header>
	
	<div class="container">
		<center>
			<div class="row">
                  <div class="col">
                         <h3 style="font-weight: 900">Calciatore</h3>
                   </div>
                   
                   <div class="col">
                         <h3 style="font-weight: 900">Voti</h3>
                   </div>
            </div>
            
            <div class="row">
                  <div class="col">
                         <h3>Dybala</h3>
                  </div>
                  
                  <div class="col">
                         <h3><%= voti[0] %></h3>
                   </div>
            </div>
            
            <div class="row">
                  <div class="col">
                         <h3>Haaland</h3>
                  </div>
                  
                  <div class="col">
                         <h3><%= voti[1] %></h3>
                   </div>
            </div>
            
            <div class="row">
                  <div class="col">
                         <h3>Lewandowski</h3>
                  </div>
                  
                  <div class="col">
                         <h3><%= voti[2] %></h3>
                   </div>
            </div>
            
            <div class="row">
                  <div class="col">
                         <h3>Mbappe</h3>
                  </div>
                  
                  <div class="col">
                         <h3><%= voti[3] %></h3>
                   </div>
            </div>
            
            <div class="row">
                  <div class="col">
                         <h3>Messi</h3>
                  </div>
                  
                  <div class="col">
                         <h3><%= voti[4] %></h3>
                   </div>
            </div>
            
            <div class="row">
                  <div class="col">
                         <h3>Neymar</h3>
                  </div>
                  
                  <div class="col">
                         <h3><%= voti[5] %></h3>
                   </div>
            </div>
            
            <div class="row">
                  <div class="col">
                         <h3>Ronaldo</h3>
                  </div>
                  
                  <div class="col">
                         <h3><%= voti[6] %></h3>
                   </div>
            </div>
		</center>
	</div>

	<center><h3><a href="index.jsp">Torna alla Home</a></h3></center>
	
</body>
</html>