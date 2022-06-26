/**
 * Validação de formulário
 * @author Ricardo
 */
 
 function validar(){
	let nome = frmOrcamento.nome.value
	let medida = frmOrcamento.medida.value
	
	if (nome === ""){
		alert('Preencha o campo Nome')
		frmOrcamento.nome.focus()
		return false
	} 
	else if(medida === ""){
		alert('Preencha o campo Medida')
		frmOrcamento.medida.focus()
		return false		
	}
	else {
		document.forms["frmOrcamento"].submit()
		
	}
}