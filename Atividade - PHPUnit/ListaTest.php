<?php
//@author Carlos SAntos e Heitor Leal
use PHPUnit\Framework\TestCase; // importa a classe TestCase do PHPUnit

// Classe que guarda tarefas simples
class Lista {
    private $itens = []; // array para guardar os itens

    public function adicionar($item) {
        if (!in_array($item, $this->itens)) { // verifica se o item já existe
            // se não existir, adiciona o item
            $this->itens[] = $item; // adiciona o item
            return true;
        }
        return false;
    }

    public function remover($item) {
        $pos = array_search($item, $this->itens); // procura o item
         // se o item não for encontrado, array_search retorna false
        if ($pos !== false) { // verifica se o item existe
            unset($this->itens[$pos]); // remove o item
            $this->itens = array_values($this->itens); // reindexa o array
            return true; 
        }
        return false;
    }

    public function listar() {
        return $this->itens; // retorna todos os itens
    }
}

// Testes da classe Lista
class ListaTest extends TestCase {

    public function testAdicionar() {
        $lista = new Lista();
        $this->assertTrue($lista->adicionar("Comprar pão")); // adiciona tarefa
        $this->assertFalse($lista->adicionar("Comprar pão")); // tarefa repetida
    }

    public function testRemover() {
        $lista = new Lista();
        $lista->adicionar("Estudar"); // adiciona tarefa
        $this->assertTrue($lista->remover("Estudar")); // remove tarefa existente
        $this->assertFalse($lista->remover("Dormir")); // tenta remover tarefa que não existe
    }

    public function testListar() {
        $lista = new Lista();
        $lista->adicionar("Acordar");
        $lista->adicionar("Tomar café");

        $itens = $lista->listar();
        $this->assertCount(2, $itens); // verifica se tem 2 itens
    }
}

/*
lista de tarefas com testes unitários

→ Métodos testados:
- adicionar(): só adiciona se não for repetido.
- remover(): só remove se o item estiver na lista.
- listar(): mostra tudo que está salvo.

→ Tipos de assert usados:
- assertTrue → para confirmar que algo deu certo.
- assertFalse → para garantir que algo não deveria acontecer.
- assertCount → pra ver quantos itens existem na lista.

*/
?>
