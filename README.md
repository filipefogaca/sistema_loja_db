# Projeto db_loja
Nesse projeto desenvolvi um banco de dados para simular o funcionamento de uma loja. A ideia aqui não foi somente gerar tabelas mas sim entender como o fluxo de mercadorias, vendas, e funcionários se conectam em um ambiente de varejo.

## A ideia do projeto
Sabe quando você vai a uma loja e o vendedor consulta o estoque, passa sua compra e já gera um pedido de reposição se o produto estiver acabando? Foi exatamente esse ecossistema que eu quis mapear.

O sistema gerencia:

A estrutura da empresa: Divisão de lojas e seus departamentos.

O dia a dia das vendas: Quem vendeu, o que foi vendido e qual o valor total.

Gestão de estoque: Controle de quantidades e integração com fornecedores para reposição.

Segurança básica: Cadastro de funcionários com cargos e credenciais de login.

## O caminho até aqui (Modelagem)
Antes de escrever qualquer linha de código SQL, eu desenhei o "esqueleto" do banco para garantir que os dados fizessem sentido entre si.

#### O rascunho (Modelo Conceitual)
Aqui eu foquei nas entidades e como elas conversam. Por exemplo: "uma loja possui departamentos" e "um funcionário realiza vendas".

![Texto alternativo](https://github.com/filipefogaca/sistema_loja_db/blob/main/modelagem/conceitual/conceitual.png)

#### A estrutura técnica (Modelo Lógico)
Nesta etapa, defini os tipos de dados (o que é texto, o que é número, o que é data) e como as tabelas se amarram através das chaves estrangeiras.

![Texto alternativo](https://github.com/filipefogaca/sistema_loja_db/blob/main/modelagem/l%C3%B3gico/l%C3%B3gico.png)

## Como o banco foi construído?
Para garantir a segurança dos dados, usei a regra ON DELETE RESTRICT. Isso significa que o sistema impede, por exemplo, que alguém apague uma loja se ainda existirem funcionários vinculados a ela. Segurança em primeiro lugar! 

As principais tabelas são:

Loja e Departamento: A base de tudo.

Produto: Onde o estoque é controlado (com valor padrão zero para novos itens).

Venda e Item_Venda: Onde o "caixa" acontece, separando o cabeçalho da venda dos produtos individuais.

Pedido de Reposição: A ponte entre a necessidade de estoque e o fornecedor.

## Quer testar?

Copie o código que está no arquivo script.sql deste repositório.

Cole no seu terminal ou editor SQL favorito (como MySQL Workbench ou DBeaver).

Execute e pronto! O banco dbloja estará criado e pronto para uso.


Feito por: Filipe Fogaça
