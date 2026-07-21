package com.devsu.ejercicio1E2E.stepdefinitions;

import com.devsu.ejercicio1E2E.actors.ActorUsuario;
import com.devsu.ejercicio1E2E.tasks.TareaDeLogin;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;

public class PasosLogin {

    @Before
    public void setUp() throws Exception {
        ActorUsuario.inicializar();
    }

    @After
    public void tearDown() {
        ActorUsuario.limpiar();
    }

    @Given("el usuario se logea con {string} y {string}")
    public void elUsuarioSeLogeaCon(String usuario, String password) {
        ActorUsuario.obtener().attemptsTo(
                TareaDeLogin.conCredenciales(usuario, password)
        );
    }
}

