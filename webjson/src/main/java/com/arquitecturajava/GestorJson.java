package com.arquitecturajava;

import java.io.IOException;
import java.io.InputStream;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

public class GestorJson {

	public Persona leerPersona() throws IOException {

		Persona p;

		InputStream is = GestorJson.class.getClassLoader().getResourceAsStream("persona.json");
		String text = new String(is.readAllBytes());
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(text);
		p = new Persona(node.get("nombre").toString(), node.get("edad").asInt());
		return p;

	}
}