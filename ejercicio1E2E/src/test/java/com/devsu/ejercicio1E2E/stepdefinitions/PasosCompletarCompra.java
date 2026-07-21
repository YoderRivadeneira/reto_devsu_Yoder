package com.devsu.ejercicio1E2E.stepdefinitions;

import com.devsu.ejercicio1E2E.actors.ActorUsuario;
import com.devsu.ejercicio1E2E.tasks.TareaIrAlCheckout;
import com.devsu.ejercicio1E2E.tasks.TareaDeCompletarCompra;
import com.devsu.ejercicio1E2E.questions.PreguntaMensajeConfirmacion;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import java.util.Arrays;
import static net.serenitybdd.screenplay.GivenWhenThen.seeThat;
import static org.hamcrest.Matchers.containsString;
import java.util.Arrays;

public class PasosCompletarCompra {

    @And("procede al checkout de los productos agregados al carrito")
    public void procedeAlCheckout() {
        ActorUsuario.obtener().attemptsTo(
                TareaIrAlCheckout.ir()
        );
    }

    @And("completa el formulario de compra con {string}, {string} y {string}")
    public void completaFormularioCon(String nombre, String apellido, String codigoPostal) {
        ActorUsuario.obtener().attemptsTo(
                TareaDeCompletarCompra.conDatos(nombre, apellido, codigoPostal)
        );
    }

    @Then("el mensaje de correcto debe ser {string}")
    public void elMensajeDeConfirmacionDeberiaSer(String mensajeEsperado) {
        ActorUsuario.obtener().should(
                seeThat(
                        "El mensaje de confirmación",
                        actor -> PreguntaMensajeConfirmacion.esVisible().answeredBy(actor).toLowerCase(),
                        containsString(mensajeEsperado.toLowerCase())
                )
        );
    }
}

