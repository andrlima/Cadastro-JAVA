package br.com.leo.cadastro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.leo.cadastro.dao.ClienteDao;
import br.com.leo.cadastro.modelo.Cliente;

@Controller
public class ClienteController {
	
	@RequestMapping("novoCliente")
	public String form() {
		return "cliente/formulario";
		
	}
	
	@RequestMapping("adicionarCliente")
	public String adicionar(Cliente cliente) {
		ClienteDao dao = new ClienteDao();
		dao.adicionar(cliente);
		return "cliente/adicionado";
	}
	
	@RequestMapping("listarCliente")
	public String listar(Model model) {
		ClienteDao dao = new ClienteDao();
		model.addAttribute("cliente", dao.listar());
		return "cliente/listar";
		
	}
	
	@RequestMapping("excluirCliente")
	public String excluir(Cliente cliente) {
		ClienteDao dao = new ClienteDao();
		dao.excluir(cliente);
		return "redirect:listarCliente";
	}
	
	@RequestMapping("mostrarCliente")
	public String mostrar(Long id, Model model) {
		ClienteDao dao = new ClienteDao();
		model.addAttribute("cliente", dao.buscaPorId(id));
		return "cliente/mostrar";
	}
	
	@RequestMapping("atualizarCliente")
	public String atualizar(Cliente cliente) {
		ClienteDao dao = new ClienteDao();
		dao.atualizar(cliente);
		return "redirect:listarCliente";
	}

}
