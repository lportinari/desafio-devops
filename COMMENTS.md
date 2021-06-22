# Considerações iniciais

## Planejamento
Inicialmente pensei em trabalhar com o docker-compose para subir o ambiente, mas como a aplicação não depende de um DB ou algum outro recurso, descartei essa ideia.

Resolvi subir dois containeres Ubuntu com o mínimo necessário para subir a aplicação, simulando um ambiente de homologação e produção. Para facilitar o gerenciamento, resolvi usar o [Portainer](https://www.portainer.io/) como orquestrador. A escolha do Portainer foi pelo fato de já usar no dia a dia.

## A Pipeline
A minha ideia inicial para a pipeline era ter um stage de build, teste, homolog, push-to-master e deploy. Também pensei em fazer o push da docker image para o docker hub com o número da versão. Por conta do tempo acabei descartando essa ideia inicial e foquei no básico.

## Solução
Eu criei uma Dockerfile com as dependências da aplicação e subi no docker hub para realizar a build e os testes necessários.

* Stage Build:
Aqui eu faço o pull da docker image, instalo as dependências com o pip e já rodo o script de teste que consiste em fazer um post para garantir que não há erro na requisição.

* Stage Deploy:
Executo a cópia do código fonte para os ambientes

* Stage test_prod:
Nesse stage eu rodo novamente o teste da app no ambiente produtivo.








