# Simple Dealership Management.
### Descrição do sistema
> O sistema consiste em ter um determinado usuário como dono e conseguir fazer alterações na concessionária, como: adicionar/remover veículos a venda.

### Task list
- [X] Criar tabela para armazenar os veiculos.
- [X] Criar tabela para armazenar contas de usuarios pré definidas.
- [X] Criar sistema de autenticação.
- [X] Criar sistema de venda de veiculos.
- [X] Apresentar memory Leak.

### Info Commands
1. /add_carshop amount price
     adiciona um veículo a venda com base nas informações que o jogador inseriu.

2. /remove_carshop vehicle
     remove um veículo a venda.

3. /login_carshop
     loga em uma conta com base nos dados pre definidos no arquivo de config. 

4. /logout_carshop
     desloga de uma conta caso esteje logado.

5. /vehicles_carshop
     mostra o total de veiculos na concessionaria.

### Permissions
/add_carshop = OwnerCarShop;
/remove_carshop = OwnerCarShop;
/vehicles_carshop = Everyone;


### Stacks
> LUA