local variavel = "" -- cria uma variavel local
variavel2 = "" -- cria uma variavel global

function nome_funcao() -- cria e descreve o nome da funcao
  if (1 == 1) then
    print("1 é igual a 1")
    
  elseif (2 == 2) then 
    print("2 é igual a 2")
  
  else
    print("1 não é igual a 1")

  end
end

print(nome_funcao(1))




-- Tabela
local animais = {
  {tipo = "Barata", age = 15},
  {tipo = "Rato", age = 15},
  {tipo = "Gato", age = 15},
  {tipo = "Dinosauro", age = 15},

}