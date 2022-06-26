<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<!-- Metadados -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
<link rel="stylesheet"
	href="resources/lib/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="formulario.css"
	media="screen">

<!-- Título da página (aparece na aba) -->
<title>Arquitech</title>
</head>
<body>	
	<div id = "container">
		<h1 id="titulo">Orçamento Aquitech</h1>
	</div>
	<!-- Início formulário -->
	<form action="selecao1" name = "frmOrcamento">
		<div class="accordion" id="accordionExample">
			<div>
				<div class="grupo">
					<div>
						<h5 class="mb-0">
							<button class="btn btn-outline-secondary btn-sm" type="button"
								data-toggle="collapse" data-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">
								Arquitetônico</button>
						</h5>
					</div>
				</div>
				<div id="collapseOne" class="collapse hide"	aria-labelledby="headingOne" data-parent="#accordionExample">
					<fieldset class="grupo">
						<div class="campo">
							<label ><strong>Nome Completo</strong></label> <input type="text" name="nome" id="nome">
						</div>
					</fieldset>
					<fieldset class="grupo">
						<div class="campo">
							<label><strong>Medida Prevista da Construção (m2)</strong></label> <input type = "number" name="medida" id="medida">
						</div>
					</fieldset>
						<div class="campo">
							<label for="senioridade"><strong>Duração da	reunião</strong></label> 
							<select id="senioridade" name="Tempo" required>
								<option selected disabled>Selecione</option>
								<option>1:00 Hora</option>
								<option>1:30 Hora</option>
								<option>2:00 Horas</option>
								<option>2:30 Horas</option>
								<option>3:00 Horas</option>
							</select>
						</div>
					<fieldset class="grupo">
						<div class="campo">
							<label for="senioridade"><strong>Tipo de Construção</strong></label>
							<select id="senioridade" name="Tipo" required>
								<option selected disabled >Selecione</option>
								<option>Térrea</option>
								<option>Assobradado</option>
							</select>
						</div>
					</fieldset>
					<div class="campo">
						<label><strong></strong></label> <label>
						</label> <label> <input type="checkbox" name="sel1Check1" value="Elaboração da proposta"> Elaboração da proposta
						</label> <label> <input type="checkbox" name="sel1Check2" value="Elaboração do contrato"> Elaboração do contrato
						</label> <label> <input type="checkbox" name="sel1Check3" value="Visita ao local"> Visita ao local
						</label> <label> <input type="checkbox" name="sel1Check4" value="Pesquisa de referências"> Pesquisa de referências
						</label> <label> <input type="checkbox" name="sel1Check5" value="Estudo preliminar"> Estudo preliminar
						</label> <label> <input type="checkbox" name="sel1Check6" value="Reunião de apresentação de estudo"> Reunião de apresentação de estudo
						</label> <label> <input type="checkbox" name="sel1Check7" value="Projeto arquitetônico / layout"> Projeto arquitetônico/Layout
						</label>
					</div>
				</div>
			</div>
			<div class="accordion" id="accordionExample">
				<div>
					<div class="grupo">
						<div>
							<h5 class="mb-0">
								<button class="btn btn-outline-secondary btn-sm" type="button"
									data-toggle="collapse" data-target="#collapseTwo"
									aria-expanded="true" aria-controls="collapseTwo">
									Prefeitura/Condomínio</button>
							</h5>
						</div>
					</div>
					<div id="collapseTwo" class="collapse hide"
						aria-labelledby="headingTwo" data-parent="#accordionExample">
						<fieldset class="grupo"></fieldset>
						<fieldset class="grupo">
							<div class="campo">
								<select id="senioridade" name="apr">
									<option selected disabled>Aprovações</option>
									<option>Prefeitura</option>
									<option>Condomínio</option>
									<option>Prefeitura e Condomínio</option>
								</select>
							</div>
						</fieldset>
						<div class="campo">
							<label><strong></strong></label> <label> 
							<input	type="checkbox" name= "sel2Check1" value="Documentação">Documentação</label> <label> 
							<input type="checkbox" name= "sel2Check2" value="Projeto com normas">Projeto com normas</label>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion" id="accordionExample">
				<div>
					<div class="grupo">
						<div>
							<h5 class="mb-0">
								<button class="btn btn-outline-secondary btn-sm" type="button"
									data-toggle="collapse" data-target="#collapseThree"
									aria-expanded="true" aria-controls="collapseThree">
									Maquete Eletrônica</button>
							</h5>
						</div>
					</div>
					<div id="collapseThree" class="collapse hide"
						aria-labelledby="headingThree" data-parent="#accordionExample">
						<fieldset class="grupo">
							<div class="campo">
								<label for="senioridade"><strong>Complexidade</strong></label>
							 	<select	id="senioridade" required name="comp" >
									<option selected disabled >Selecione</option>
									<option>Alta</option>
									<option >Média</option>
									<option >Baixa</option>
								</select>
							</div>
						</fieldset>
						<div class="campo">							
							<label> <input type="checkbox" name="sel3Check1" value="Maquete 3D">Maquete 3D</label> 
							<label> <input type="checkbox" name="sel3Check2" value="Maquete Física">Maquete Física</label> 
							<label> <input type="checkbox" name="sel3Check3" value="Interiores">Interiores </label>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion" id="accordionExample">
				<div>
					<div class="grupo">
						<div>
							<h5 class="mb-0">
								<button class="btn btn-outline-secondary btn-sm" type="button"
									data-toggle="collapse" data-target="#collapseFour"
									aria-expanded="true" aria-controls="collapseFour">
									Detalhamento</button>
							</h5>
						</div>
					</div>
					<div id="collapseFour" class="collapse hide"
						aria-labelledby="headingFour" data-parent="#accordionExample">
						<fieldset class="grupo">
							<div class="campo">
								<select id="senioridade" name = "parc" required>
									<option selected disabled>Selecione</option>
									<option>Com parceria</option>
									<option>Sem parceria</option>
								</select>
							</div>
						</fieldset>
						<div class="campo">
							<label><strong></strong></label> <label> 
							<input type="checkbox" name="sel4Check1" value="Projeto por ambiente / Marcenaria">Projeto por ambiente / Marcenaria</label> <label> 
							<input type="checkbox" name="sel4Check2" value="Reunião ajuste interiores">Reunião ajuste interiores </label>
						</div>
						<!-- Caixa de texto -->
						<div class="campo">
							<br> <label for="experiencia"><strong>Observações:
							</strong></label>
							<textarea rows="2" cols = "100" style="width: 26em" id="experiencia"
								name="obs"></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="grupo">
			<div>
				<h5 class="mb-0">
					<button type = button class="btn btn-outline-secondary btn-sm"  onclick = "validar()" value = "Gerar Orçamento">Gerar orçamento</button>	
				</h5>	
			</div>	
		</div>	
		<button  type = button class="btn btn-outline-secondary btn-sm" >Listar Orçamentos</button>
	</form>
	
	 	
	

	<!-- Fim do formulário -->


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script src="scripts/validador.js"></script>
	<footer>&copy2022 Arquitech OpenSource by Ricardo Piza</footer>
</body>

</html>
