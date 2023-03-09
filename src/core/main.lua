local logged = false

local function exists(vehicles)
  return table.find(config["vehicles_shop"], function(value)
      return value.vehicles == vehicles
  end)
end

function signIn(user, pass)
  if (logged) then
      return iprint("Você já está logado.")
  end
  if (user ~= config.account_shop.user and pass ~= config.account_shop.pass) then
    iprint("Usuario/Password incorreto.")
  end
else
  iprint("Logado com sucesso.")
  logged = true
end

function logout()
  if (logged ~= true) then
    iprint("Voce já está deslogado.")
  end
else
  logged = false
  iprint("Você foi deslogado com sucesso.")
end

function addVehicle(vehicles, amount, price)
  if (logged == false) then
      return iprint("Você precisa está logado.")
  end
  if (not vehicles or not amount or not price)  then
      return iprint("Digite [/add_carshop] [amount] [price].")
  end
  table.insert(config["vehicles_shop"], { vehicles = vehicles, amount = amount, price = price})
  iprint("Você adicionou "..amount.."x "..vehicles.." por $ "..price.." na concessionaria.")
end

function removeVehicle(vehicles)
  if (logged == false) then
      return iprint("Você precisa está logado.")
  end
  local exists = exists(vehicles)
  if (not exists) then
      return iprint("Esse veiculo não existe no concessionaria.")
  end

  table.remove(config["vehicles_shop"], exists)
  iprint("Você removeu o veiculo: "..vehicles..".")
end

function vehicles_carshop()
  local vehicles = getVehicles()
  if (vehicles == 0) then
      return iprint("A concessionaria está vazia.")
  end
  iprint("A concessionaria possui "..vehicles.. ".")
end