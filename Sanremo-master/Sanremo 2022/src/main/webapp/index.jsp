<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="Sanremo.Artista"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
	</head>
	<body>
		<%
	
		ArrayList<Artista> cantanti = new ArrayList<Artista>();	
		Artista artista1 = new Artista();
		
		artista1.setNome("Achille Lauro");
		artista1.setCanzone("Domenica");
		artista1.setImmagine("img/achilleLauro.jpg");
		artista1.setUltimovoto("");
		cantanti.add(artista1);
		
		Artista artista2 = new Artista();
		
		artista2.setNome("Aka 7even");
		artista2.setCanzone("Perfetta cosi");
		artista2.setImmagine("img/aka7even.jpg");
		artista2.setUltimovoto("");
		cantanti.add(artista2);
		
		Artista artista3 = new Artista();
		
		artista3.setNome("Ana Mena");
		artista3.setCanzone("Duecentomila ore");
		artista3.setImmagine("img/anaMena.jpg");
		artista3.setUltimovoto("");
		cantanti.add(artista3);
		
		Artista artista4 = new Artista();
		
		artista4.setNome("Dargen D'Amico");
		artista4.setCanzone("Dove si balla");
		artista4.setImmagine("img/dargenDamico.jpg");
		artista4.setUltimovoto("");
		cantanti.add(artista4);
		
		Artista artista5 = new Artista();
		
		artista5.setNome("Dito nella piaga feat Rettore");
		artista5.setCanzone("Chimica");
		artista5.setImmagine("img/DitonellapiagaRettore.jpg");
		artista5.setUltimovoto("");
		cantanti.add(artista5);
		
		Artista artista6 = new Artista();
		
		artista6.setNome("Elisa");
		artista6.setCanzone("O forse sei tu");
		artista6.setImmagine("img/Elisa.jpg");
		artista6.setUltimovoto("");
		cantanti.add(artista6);
		
		Artista artista7 = new Artista();
		
		artista7.setNome("Fabrizio Moro");
		artista7.setCanzone("Sei tu");
		artista7.setImmagine("img/FabrizioMoro.png");
		artista7.setUltimovoto("");
		cantanti.add(artista7);
		
		Artista artista8 = new Artista();
		
		artista8.setNome("Gianni Morandi");
		artista8.setCanzone("Apri tutte le porte");
		artista8.setImmagine("img/GianniMorandi.jpg");
		artista8.setUltimovoto("");
		cantanti.add(artista8);
		
		Artista artista9 = new Artista();
		
		artista9.setNome("Giovanni Truppi");
		artista9.setCanzone("Tuo padre, mia madre, Lucia");
		artista9.setImmagine("img/GiovanniTruppi.jpg");
		artista9.setUltimovoto("");
		cantanti.add(artista9);
		
		Artista artista10 = new Artista();
		
		artista10.setNome("Giusy Ferreri");
		artista10.setCanzone("Miele");
		artista10.setImmagine("img/GiusyFerreri.jpg");
		artista10.setUltimovoto("");
		cantanti.add(artista10);
		
		Artista artista11 = new Artista();
		
		artista11.setNome("Highsnob feat Hu");
		artista11.setCanzone("Abbi cura di te");
		artista11.setImmagine("img/highsnobHu.jpg");
		artista11.setUltimovoto("");
		cantanti.add(artista11);
		
		Artista artista12 = new Artista();
		
		artista12.setNome("Irama");
		artista12.setCanzone("Ovunque sarai");
		artista12.setImmagine("img/Irama.jpg");
		artista12.setUltimovoto("");
		cantanti.add(artista12);
		
		Artista artista13 = new Artista();
		
		artista13.setNome("Iva Zanicchi");
		artista13.setCanzone("Voglio amarti");
		artista13.setImmagine("img/IvaZanicchi.jpeg");
		artista13.setUltimovoto("");
		cantanti.add(artista13);
		
		Artista artista14 = new Artista();
		
		artista14.setNome("Le Vibrazioni");
		artista14.setCanzone("Tantissimo");
		artista14.setImmagine("img/LeVibrazioni.jpg");
		artista14.setUltimovoto("");
		cantanti.add(artista14);
		
		Artista artista15 = new Artista();
		
		artista15.setNome("Mahmood feat Blanco");
		artista15.setCanzone("Brividi");
		artista15.setImmagine("img/MahmoodBlanco.png");
		artista15.setUltimovoto("");
		cantanti.add(artista15);
		
		Artista artista16 = new Artista();
		
		artista16.setNome("Massimo Ranieri");
		artista16.setCanzone("Lettera al di là del mare");
		artista16.setImmagine("img/MassimoRanieri.jpg");
		artista16.setUltimovoto("");
		cantanti.add(artista16);
		
		Artista artista17 = new Artista();
		
		artista17.setNome("Michele Bravi");
		artista17.setCanzone("Inverno dei fiori");
		artista17.setImmagine("img/MicheleBravi.jpg");
		artista17.setUltimovoto("");
		cantanti.add(artista17);
		
		Artista artista18 = new Artista();
		
		artista18.setNome("Noemi");
		artista18.setCanzone("Ti amo non lo so dire");
		artista18.setImmagine("img/Noemi.jpg");
		artista18.setUltimovoto("");
		cantanti.add(artista18);
		
		Artista artista19 = new Artista();
		
		artista19.setNome("Rkomi");
		artista19.setCanzone("Insuperabile");
		artista19.setImmagine("img/Rkomi.jpg");
		artista19.setUltimovoto("");
		cantanti.add(artista19);
		
		Artista artista20 = new Artista();
		
		artista20.setNome("SanGiovanni");
		artista20.setCanzone("Farfalle");
		artista20.setImmagine("img/sangiovanni.jpg");
		artista20.setUltimovoto("");
		cantanti.add(artista20);
		
		session.setAttribute("cantanti", cantanti);		
		
		response.sendRedirect("principale.jsp");
		
		%>
	</body>
</html>