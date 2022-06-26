<%@page import="controller.Controller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import= "java.util.*"  %>
<%@page import= "controller.Utils"  %>
<%
Utils utils = new Utils();
String sel1Check1 = request.getParameter("sel1Check1");
String sel1Check2 = request.getParameter("sel1Check2");
String sel1Check3 = request.getParameter("sel1Check3");
String sel1Check4 = request.getParameter("sel1Check4");
String sel1Check5 = request.getParameter("sel1Check5");
String sel1Check6 = request.getParameter("sel1Check6");
String sel1Check7 = request.getParameter("sel1Check7");
String[] sel1Checklist = {sel1Check1,sel1Check2,sel1Check3,sel1Check4,sel1Check5,sel1Check6,sel1Check7};
String sel2Check1 = request.getParameter("sel2Check1");
String sel2Check2 = request.getParameter("sel2Check2");
String[] sel2Checklist = {sel2Check1,sel2Check2};
String sel3Check1 = request.getParameter("sel3Check1");
String sel3Check2 = request.getParameter("sel3Check2");
String sel3Check3 = request.getParameter("sel3Check3");
String[] sel3Checklist = {sel3Check1,sel3Check2,sel3Check3};
String sel4Check1 = request.getParameter("sel4Check1");
String sel4Check2 = request.getParameter("sel4Check2");
String[] sel4Checklist = {sel4Check1,sel4Check2};
String tempo = request.getParameter("Tempo");
String apr = request.getParameter("apr");
String parc = request.getParameter("parc");
String comp = request.getParameter("comp");
String id1 = String.valueOf(utils.getId1());
String id2 = String.valueOf(utils.getId2());
String id3= String.valueOf(utils.getId3());
String id4 = String.valueOf(utils.getId4());
String id5 = String.valueOf(utils.getId5());
String id6 = String.valueOf(utils.getId6());
String id7 = String.valueOf(utils.getId7());
String[] ids = {id1,id2,id3,id4,id5,id6,id7};
String id8 = String.valueOf(utils.getId8());
String id9 = String.valueOf(utils.getId9());
String id10 = String.valueOf(utils.getId10());
String id11 = String.valueOf(utils.getId11());
String id12 = String.valueOf(utils.getId12());
double id13 = utils.getId13();
double id14 = utils.getId14();
String id15 = String.valueOf(utils.getId15());
String id16 = String.valueOf(utils.getId16());
String id17 = String.valueOf(utils.getId17());
String[] ids2 = {id16,id17};
double id18 = utils.getId18();
double id19 = utils.getId19();
double id20 = utils.getId20();
double[] idsl = {id18,id19,id20};
double id21 = utils.getId21();
double id22 = utils.getId22();
double id23 = utils.getId23();
double[] ids3 = {id21,id22,id23};
double id24 = utils.getId24();
double id25 = utils.getId25();
String id26 = String.valueOf(utils.getId26());
String id27 = String.valueOf(utils.getId27());
String[] ids4 = {id26,id27};
%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- CSS -->
<link rel="stylesheet" type="text/css" href="formulario.css" media="screen">

		<style>
	@charset "UTF-8";
*{
	font-family: sans-serif;
    color: #380B61;
    margin: 0;
}
h3{
	margin: 5px;
}
h2{
	margin-top: 25px;
	font-size: 30px;
}

body{
    width: 800px;
    height:1060px;
    margin: auto;
}
.titulo {
    font-family: sans-serif;
    color: #380B61;
    margin-bottom: 30px;
    font-weight: 1100;
} 
.tabela{
	width: 800px;
    height:960px;
}

.total{
	width: 250px;
}
span{
	float: right;
	text-align: center;
	padding-right: 10px;
}
table, td{
	border: 1px solid #380B61;
	background-color: #FFF;
}
.btnprint{
	height: 50px; 
	width: 200px;
	font-size:1.2em;
	border: 1px solid #DBDDFF;
	cursor: pointer;
	border-radius: 30px;
	float:right;
	margin-bottom: 100px;
	background-color:transparent;
	opacity:0.8;	
	color:#DBDDFF;
	transition: color 0.5s ease-in-out, background-color 0.3s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.btnvolta{
	height: 50px; 
	width: 200px;
	font-size:1.2em;
	border: 1px solid #DBDDFF;
	cursor: pointer;
	border-radius: 30px;
	float:left;
	margin-bottom: 100px;
	background-color:transparent;
	opacity:0.8;	
	color:#DBDDFF;
	transition: color 0.5s ease-in-out, background-color 0.3s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;	
}
.btnvolta:hover, .btnprint:hover{
	color:#ccc;
	border: 1px solid #ccc;
	background-color:grey;
}

@media print { 
	#noprint { display:none; } 
	body { background: #fff; }
	color: #380B61;
	table tbody tr:nth-child(2n+1)
}
	</style>
<title>Orçamento</title>
</head>
<body >
<h1 class="titulo" align = "center">Orçamento</h1>
<form action="selecao1" method="post" >
<div align = "center">
	<table class = "tabela">			
		<tr><td height = "120px" align = "center"><img src = "resources/images/architect.png" width = "150px" height = "120px"></td>
		<td  colspan = "2"><h2 class="titulo" align = "center">Architech Orçamentos Arquitetônicos</h2><span><%out.print("&nbspData: " + utils.getDateTime());%></span></td>
		</tr>
		<tr>
			<td width = "220px" height = "50px"> <h3><b>Cliente</b></h3></td>
			<td align = "center" colspan = "2"> <%out.print(request.getAttribute("nome")); %></td>
		</tr>
		<tr>
			<td height = "50px"> <h3><b>Medida Prevista:</b></h3></td>
			<td align = "center" colspan = "2"><%out.print(request.getAttribute("medida")+" (Metros quadrados)"); %></td>
		</tr>
		<tr>
			<td height = "50px"> <h3><b>Tempo de reunião:</b></h3></td>
			<td class = "tdmeio" colspan = "2" ><%out.print("&nbsp"+request.getAttribute("Tempo")); %>
			 <%try{
				if (tempo.equals("1:00 Hora")){out.print("<span>R$: " +id8+"</span><br>");}
				   else if (tempo.equals("1:30 Hora")){out.print("<span>R$: " + id9+"</span><br>");}
				   else if (tempo.equals("2:00 Horas")){out.print("<span>R$: " + id10+"</span><br>");}
				   else if (tempo.equals("2:30 Horas")){out.print("<span>R$: " + id11+"</span><br>");}
				   else if (tempo.equals("3:00 Horas")){out.print("<span>R$: " + id12+"</span><br>");}
							}	   
			catch(Exception e){
				   }
				   %></td>				   
		</tr>
		<tr>			
			<td> <h3><b>Projeto Arquitetônico:</b></h3></td>	
			<td colspan = "2">
			<%try{						
				for (int i = 0; i<sel1Checklist.length;i++){							
					if (sel1Checklist[i] == (null)){
						sel1Checklist[i] = ("");}
						else
						{
						out.print("&nbsp"+sel1Checklist[i] + "<span>R$: " +ids[i]+ "</span><br>");}	
					
					};						
			}
			catch (Exception e){
			}
			%>
			</td>																	
		</tr>
		<tr>
			<td> <h3><b>Aprovações:</b></h3></td>
			<td class = "tdmeio" colspan = "2">
			<%try
			{ if (apr.equals("Prefeitura"))
			{out.print("&nbsp"+request.getAttribute("apr") +"<span>R$: " +id13 + "</span><br>");} 
			if (apr.equals("Condomínio"))
			{out.print("&nbsp"+request.getAttribute("apr") +"<span>R$: " +id14 + "</span><br>");} 
			if (apr.equals("Prefeitura e Condomínio"))
			{out.print("&nbsp"+request.getAttribute("apr") +"<span>R$: " +id15 + "</span><br>");} 			
			}
			catch (Exception e){
			}
			try{	
			for (int i = 0; i<sel2Checklist.length;i++){							
				if (sel2Checklist[i] == (null)){
					sel2Checklist[i] = ("");}
					else
					{
					out.print("&nbsp"+sel2Checklist[i]+ "<span>R$: "+ids2[i]+ "</span><br>");}	
						}   
					}
					catch (Exception e){
					}%>
					</td> 					   
			</tr>
			<tr>
			<td> <h3><b>Maquete:</b></h3></td>
			<td class = "tdmeio" colspan = "2"><%try {
			if (("comp").equals(null))
			{out.print("");
			} else {out.print("&nbspComplexidade "+ request.getAttribute("comp"));
			} if(comp.equals("Alta")){
				out.print(" - Acréscimo de 15% nas maquetes<br>");
			} if(comp.equals("Média")){
				out.print(" - Acréscimo de 10% nas maquetes<br>");
			} if(comp.equals("Baixa")){
				out.print(" - Acréscimo de 5% nas maquetes<br>");
			}			
				for (int i = 0; i<sel1Checklist.length;i++){							
					if (sel3Checklist[i] == (null)){
						sel3Checklist[i] = ("");}
						else
						{
						out.print("&nbsp"+sel3Checklist[i]+ "<span>R$: "+ids3[i]+ "</span><br>");}						
					};				
					}
					catch (Exception e){
					}				
					%></td>
			</tr>
			<tr>
			<td> <h3><b>Detalhamento</b></h3></td>			
			<td class = "tdmeio" colspan ="2">			
			<%try { 
				if(request.getParameter("parc") != null)
				 {out.print("&nbsp"+request.getParameter("parc")+" (Desconto de 15%) <br><br>");}
				else {out.print("");}
					for (int i = 0; i<sel1Checklist.length;i++){							
						if (sel4Checklist[i] == (null)){
							sel4Checklist[i] = ("");}
							else
							{
							out.print("&nbsp"+sel4Checklist[i]+ "<span>R$: "+ids4[i]+ "</span><br>");}	
					
						};
				}				
						catch (Exception e){
						}				
					%></td>
			</tr>
						
			<tr>
				<td ><h3><b>Tipo de construção:</b></h3></td> <td colspan = "2" align = "center"> <%out.print("&nbsp"+request.getAttribute("Tipo")); %></td>
			</tr>
			<tr>
			<td > <h3><b>Observações:</b></h3></td>
			<td colspan = "2" class = "try"><%out.print("&nbsp"+request.getAttribute("obs")); %></td></tr>
			<tr>			
			<td> <h3><b>Total</b></h3></td>
			
			<td align = "center" colspan = "2"><span><%out.print("<strong>R$: " + request.getAttribute("total") +"</strong>"); %></span></td>
			</tr>
		</table>
</div>
	
	</form><br><br><br>
			
      <div id="noprint">
            <button type="button" class="btnvolta" title="voltar" onclick="goBack()">Voltar</button>
        </div>
      <div id="noprint">
            <a href="javascript:;" onclick="window.print();return false"><button type="button" class="btnprint" title="Imprimir">Imprimir/Gerar PDF</button></a>
        </div>
        <br><br><br>
        <script>
		function goBack() {
    	window.history.back()
		}
		</script>
</body>
		<footer>&copy2022 Arquitech OpenSource by Ricardo Piza</footer>
</html>