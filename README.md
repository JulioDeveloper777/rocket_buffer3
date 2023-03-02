# Simple Dealership Management.
### Descrição do sistema
> O sistema consiste em ter um determinado usuário como dono e conseguir fazer alterações na concessionária, como: adicionar/remover veículos a venda.

### Task list
- [X] Sistema de autenticação.
- [X] Sistema de venda de veiculos.
- [X] Adicionar Memory Leak.

### Info Commands
- /add_carshop id_vehicle price
    - adiciona um veículo a venda com base nas informações que o jogador inseriu.

- /remove_carshop id_vehicle price
    - remove um veículo a venda.

- /login_carshop
    - loga na conta de owner com os dados inseridos no arquivo config.

- /logout_carshop
    - desloga da conta de owner.

- /vehicles_carshop
    - mostra o total de veiculos na concessionaria.

### Permissions
1. login_carshop = Everyone;
2. logout_carshop = OwnerCarShop
3. add_carshop = OwnerCarShop;
4. remove_carshop = OwnerCarShop;
5. vehicles_carshop = Everyone;

### Stacks
> LUA
