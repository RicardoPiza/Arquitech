package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.JavaBeans;

@WebServlet(urlPatterns = { "/Controller", "/selecao1", "/nome", "/medida", "/Tempo", "/Tipo", "/sel1Check1",
		"/sel1Check2", "/sel1Check3", "/sel1Check4", "/sel1Check5", "/sel1Check6", "/sel1Check7", "/apr", "/sel2Check1",
		"/sel2Check2", "/comp", "/sel3Check1", "/sel3Check2", "/sel3Check3", "/parc", "/sel4Check1", "/sel4Check2",
		"/obs" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Utils var = new Utils();
		String sel1Check1 = request.getParameter("sel1Check1");
		String sel1Check2 = request.getParameter("sel1Check2");
		String sel1Check3 = request.getParameter("sel1Check3");
		String sel1Check4 = request.getParameter("sel1Check4");
		String sel1Check5 = request.getParameter("sel1Check5");
		String sel1Check6 = request.getParameter("sel1Check6");
		String sel1Check7 = request.getParameter("sel1Check7");
		String sel2Check1 = request.getParameter("sel2Check1");
		String sel2Check2 = request.getParameter("sel2Check2");
		String sel3Check1 = request.getParameter("sel3Check1");
		String sel3Check2 = request.getParameter("sel3Check2");
		String sel3Check3 = request.getParameter("sel3Check3");
		String sel4Check1 = request.getParameter("sel4Check1");
		String sel4Check2 = request.getParameter("sel4Check2");
		String tempo = request.getParameter("Tempo");
		String apr = request.getParameter("apr");
		String comp = request.getParameter("comp");
		String parc = request.getParameter("parc");
		String tipo = request.getParameter("Tipo");
		String nome = request.getParameter("nome");
		String medida = request.getParameter("medida");
		String obs = request.getParameter("obs");
		double total = 0;

		/*----------------Parametros do checkbox (Arquitetônico)--------------------*/
		try {
			if (sel1Check1 != null) {
				total += var.getId1();
			}
			if (sel1Check2 != null) {
				total += var.getId2();
			}
			if (sel1Check3 != null) {
				total += var.getId3();
			}
			if (sel1Check4 != null) {
				total += var.getId4();
			}
			if (sel1Check5 != null) {
				total += var.getId5();
			}
			if (sel1Check6 != null) {
				total += var.getId6();
			}
			if (sel1Check7 != null) {
				total += var.getId7();
			}
		} catch (Exception e) {
		}
		/*----------------Parametros do checkbox (Prefeitura/Condominio)--------------------*/
		try {
			if (sel2Check1 != null) {
				total += var.getId16();
			}
			if (sel2Check2 != null) {
				total += var.getId17();
			}
		} catch (Exception e) {
		}
		/*----------------Parametros do combobox (Detalhamento)--------------------*/
		try {
			if (sel4Check1 != null && parc.equals("Com parceria")) {
				total = var.getId26() - var.getId25() * var.getId26();
			} else if (sel4Check1 != null) {
				total += var.getId26();
			}
			if (sel4Check2 != null && parc.equals("Com parceria")) {
				total += var.getId27() - (var.getId27() * var.getId25());
			} else if (sel4Check2 != null) {
				total += var.getId27();
			}
		} catch (Exception e) {

		}
		/*----------------Parametros do combobox e checkbox(Maquete eletronica)--------------------*/
		try {
			if (comp.equals("Alta") && sel3Check1 != null && sel3Check2 == null && sel3Check3 == null) {
				total += var.getId21() * var.getId18();
			} else if (comp.equals("Alta") && sel3Check2 != null && sel3Check1 == null && sel3Check3 == null) {
				total += var.getId22() * var.getId18();
			} else if (comp.equals("Alta") && sel3Check3 != null && sel3Check1 == null && sel3Check2 == null) {
				total += var.getId23() * var.getId18();
			} else if (comp.equals("Alta") && sel3Check1 != null && sel3Check2 != null && sel3Check3 == null) {
				total += (var.getId21() + var.getId22()) * var.getId18();
			} else if (comp.equals("Alta") && sel3Check1 != null && sel3Check3 != null && sel3Check2 == null) {
				total += (var.getId21() + var.getId23()) * var.getId18();
			} else if (comp.equals("Alta") && sel3Check2 != null && sel3Check3 != null && sel3Check1 == null) {
				total += (var.getId22() + var.getId23()) * var.getId18();
			} else if (comp.equals("Alta") && sel3Check1 != null && sel3Check2 != null && sel3Check3 != null) {
				total += (var.getId21() + var.getId22() + var.getId23()) * var.getId18();
			}
		} catch (Exception e) {
		}
		try {
			if (comp.equals("Média") && sel3Check1 != null && sel3Check2 == null && sel3Check3 == null) {
				total += var.getId21() * var.getId19();
			} else if (comp.equals("Média") && sel3Check2 != null && sel3Check1 == null && sel3Check3 == null) {
				total += var.getId22() * var.getId19();
			} else if (comp.equals("Média") && sel3Check3 != null && sel3Check1 == null && sel3Check2 == null) {
				total += var.getId23() * var.getId19();
			} else if (comp.equals("Média") && sel3Check1 != null && sel3Check2 != null && sel3Check3 == null) {
				total += (var.getId21() + var.getId22()) * var.getId19();
			} else if (comp.equals("Média") && sel3Check1 != null && sel3Check3 != null && sel3Check2 == null) {
				total += (var.getId21() + var.getId23()) * var.getId19();
			} else if (comp.equals("Média") && sel3Check2 != null && sel3Check3 != null && sel3Check1 == null) {
				total += (var.getId22() + var.getId23()) * var.getId19();
			} else if (comp.equals("Média") && sel3Check1 != null && sel3Check2 != null && sel3Check3 != null) {
				total += (var.getId21() + var.getId22() + var.getId23()) * var.getId19();
			}
		} catch (Exception e) {
		}
		try {
			if (comp.equals("Baixa") && sel3Check1 != null && sel3Check2 == null && sel3Check3 == null) {
				total += var.getId21() * var.getId20();
			} else if (comp.equals("Baixa") && sel3Check2 != null && sel3Check1 == null && sel3Check3 == null) {
				total += var.getId22() * var.getId20();
			} else if (comp.equals("Baixa") && sel3Check3 != null && sel3Check1 == null && sel3Check2 == null) {
				total += var.getId23() * var.getId20();
			} else if (comp.equals("Baixa") && sel3Check1 != null && sel3Check2 != null && sel3Check3 == null) {
				total += (var.getId21() + var.getId22()) * var.getId20();
			} else if (comp.equals("Baixa") && sel3Check1 != null && sel3Check3 != null && sel3Check2 == null) {
				total += (var.getId21() + var.getId23()) * var.getId20();
			} else if (comp.equals("Baixa") && sel3Check2 != null && sel3Check3 != null && sel3Check1 == null) {
				total += (var.getId22() + var.getId23()) * var.getId20();
			} else if (comp.equals("Baixa") && sel3Check1 != null && sel3Check2 != null && sel3Check3 != null) {
				total += (var.getId21() + var.getId22() + var.getId23()) * var.getId20();
			}
		} catch (Exception e) {
		}
		/*----------------Parametros do combobox (Duração reunião)--------------------*/
		try {
			if (tempo.equals("1:00 Hora")) {
				total += var.getId8();
			}
			if (tempo.equals("1:30 Hora")) {
				total += var.getId9();
			}
			if (tempo.equals("2:00 Horas")) {
				total += var.getId10();
			}
			if (tempo.equals("2:30 Horas")) {
				total += var.getId11();
			}
			if (tempo.equals("3:00 Horas")) {
				total += var.getId12();
			}
		} catch (Exception e) {

		}
		/*----------------Parametros do combobox (Prefeitura/Condominio)--------------------*/
		try {
			if (apr.equals("Prefeitura")) {
				total += var.getId13();
			}
			if (apr.equals("Condomínio")) {
				total += var.getId14();
			}
			if (apr.equals("Prefeitura e Condomínio")) {
				total += var.getId15();
			}
		} catch (Exception e) {
		}
		/*------------------------Impressão do total do orçamento------------------------*/
		request.setAttribute("Tipo", tipo);
		request.setAttribute("sel1Check1", sel1Check1);
		request.setAttribute("sel1Check2", sel1Check2);
		request.setAttribute("sel1Check3", sel1Check3);
		request.setAttribute("sel1Check4", sel1Check4);
		request.setAttribute("sel1Check5", sel1Check5);
		request.setAttribute("sel1Check6", sel1Check6);
		request.setAttribute("sel1Check7", sel1Check7);
		request.setAttribute("sel2Check1", sel2Check1);
		request.setAttribute("sel2Check2", sel2Check2);
		request.setAttribute("sel3Check1", sel3Check1);
		request.setAttribute("sel3Check2", sel3Check2);
		request.setAttribute("sel3Check3", sel3Check3);
		request.setAttribute("sel4Check1", sel4Check1);
		request.setAttribute("sel4Check2", sel4Check2);
		request.setAttribute("Tempo", tempo);
		request.setAttribute("apr", apr);
		request.setAttribute("comp", comp);
		request.setAttribute("parc", parc);
		request.setAttribute("nome", nome);
		request.setAttribute("medida", medida);
		request.setAttribute("obs", obs);
		request.setAttribute("total", total);
		RequestDispatcher rd = request.getRequestDispatcher("OutPut.jsp");
		rd.forward(request, response);
		String action = request.getServletPath();
		if (action.equals("/selecao1")) {
			addBanco(request, response);
		}
		response.sendRedirect("OutPut.jsp");
	}

	protected void addBanco(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JavaBeans dados = new JavaBeans();
		DAO dao = new DAO();
		dados.setSel1Check1(request.getParameter("sel1Check1"));
		dados.setSel1Check2(request.getParameter("sel1Check2"));
		dados.setSel1Check3(request.getParameter("sel1Check3"));
		dados.setSel1Check4(request.getParameter("sel1Check4"));
		dados.setSel1Check5(request.getParameter("sel1Check5"));
		dados.setSel1Check6(request.getParameter("sel1Check6"));
		dados.setSel1Check7(request.getParameter("sel1Check7"));
		dados.setSel2Check1(request.getParameter("sel2Check1"));
		dados.setSel2Check2(request.getParameter("sel2Check2"));
		dados.setSel3Check1(request.getParameter("sel3Check1"));
		dados.setSel3Check2(request.getParameter("sel3Check2"));
		dados.setSel3Check3(request.getParameter("sel3Check3"));
		dados.setSel4Check1(request.getParameter("sel4Check1"));
		dados.setSel4Check2(request.getParameter("sel4Check2"));
		dados.setTempo(request.getParameter("Tempo"));
		dados.setApr(request.getParameter("apr"));
		dados.setComp(request.getParameter("comp"));
		dados.setParc(request.getParameter("parc"));
		dados.setTipo(request.getParameter("Tipo"));
		dados.setNome(request.getParameter("nome"));
		dados.setMedida(request.getParameter("medida"));
		dados.setObs(request.getParameter("obs"));
		dao.salvarForm(dados);
	}

}
