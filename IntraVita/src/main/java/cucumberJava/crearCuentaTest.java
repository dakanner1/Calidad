package cucumberJava;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import com.intravita.proyectointranet.modelo.Administrador;
import com.intravita.proyectointranet.modelo.Usuario;
import com.intravita.proyectointranet.persistencia.AdministradorDAO;
import com.intravita.proyectointranet.persistencia.AdministradorDAOImpl;
import com.intravita.proyectointranet.persistencia.UsuarioDAO;
import com.intravita.proyectointranet.persistencia.UsuarioDAOImpl;
import com.intravita.proyectointranet.utlidades.utilidades;

import cucumber.annotation.en.Given;
import cucumber.annotation.en.Then;
import cucumber.annotation.en.When;

public class crearCuentaTest {

	private Usuario usuario;
	private String nombre;
	private String pwd1;
	private String pwd2;
	private String email;
	UsuarioDAOImpl usuarioDao= new UsuarioDAOImpl();
	
	@Given("^Usuario en pagina de creacion$")
	public void Usuario_en_pagina_de_creacion() {
		usuario=new Usuario();
	}

	@When("^Nombre, email, password y confirmacion validos$")
	public void Nombre_email_contrase_a_y_confirmacion_validos() {
		nombre="fernando";
		email="fernando@alu.uclm.es";
		pwd1="1234";
		pwd2="1234";
		assertTrue(utilidades.credencialesValidas(nombre, email, pwd1, pwd2));
		
		usuario.setNombre(nombre);
		usuario.setClave(pwd1);
		usuario.setEmail(email);
	}

	@Then("^Mensaje de validacion y usuario insertado$")
	public void Mensaje_de_validacion_y_usuario_insertado() {
		assertTrue(usuarioDao.insert(usuario));
	}

	@When("^Email no tiene extension alu.uclm.es$")
	public void Email_no_tiene_extension_alu_uclm_es() {
		nombre="fernando";
		email="fernando@alu.uclm.ese";
		pwd1="1234";
		pwd2="1234";
	}

	@Then("^Mensaje de error a la creacion$")
	public void Mensaje_de_error_a_la_creacion() {
		assertFalse(utilidades.credencialesValidas(nombre, email, pwd1, pwd2));
	}

	@When("^Password y su confirmacion no coinciden$")
	public void Contrase_a_y_su_confirmacion_no_coinciden() {
		nombre="fernando";
		email="fernando@alu.uclm.es";
		pwd1="1234";
		pwd2="12345";
	}

}