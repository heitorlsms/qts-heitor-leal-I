import assert from 'node:assert';

var dois = 2;
var cinco = 5;
var soma = dois + cinco;
var multiplicacaofalha = dois * cinco + 1;
let um = "1";

//Teste 1 
Deno.test("Teste de Soma", () => {
    assert.strictEqual(soma, 6+1,
        "Coé parceiro, essa soma deu errado ai em, fica esperto!",
    );
});

//Teste 2
Deno.test("Isso não está vazio", () => {
    assert.ifError(null);
});

//Teste 3
Deno.test("Isso tem que falhar", () => {
    assert.notEqual(soma, 8 - 1,
        "Calma lá paizão, essa conta está certa."
    );
});

//Teste 4
Deno.test("Não sei como nomear", () => {
    assert.match("um", /um/,
        "Não sei como deu erro, mas se não tivesse dado erro eu também não saberia o porquê"
    )
});

//Teste 5
Deno.test("True or False", () => {
    assert.ok(um)
});