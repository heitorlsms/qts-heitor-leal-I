import { assertEquals, assertExists, assertMatch } from "http://deno.land/std/testing/asserts.ts";

function soma(a, b) {
  return a + b;
}

function buscarUsuario(id) {
  const usuarios = [
    { id: 1, nome: "João" },
    { id: 2, nome: "Maria" }
  ];

  return usuarios.find(usuario => usuario.id === id) || null;
}

Deno.test("testando igualdade de valores", () => {
  const resultado = soma(2, 3);
  assertEquals(resultado, 5, "A soma de 2 + 3 deve ser igual a 5");
});

Deno.test("testando existência de objeto", () => {
  const usuario = buscarUsuario(2);
  assertExists(usuario, "O usuário deve existir");
});

Deno.test("testando formato de email", () => {
  const email = "usuario@exemplo.com";
  assertMatch(email, /^[^\s@]+@[^\s@]+\.[^\s@]+$/, "O formato do email deve ser válido");
});