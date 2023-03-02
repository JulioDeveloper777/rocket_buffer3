VehiclesShop = {}
local Logged = false

local function exists(idvehicle)
  return table.find(VehiclesShop, function (value)
    return value.idvehicle == idvehicle
  end)
end

function SignInOwner(user, pass)
  if (user == user_carshop and pass == password_carshop and Logged == false) then
    outputChatBox ("[CarShop] Voce foi autenticado.", 255, 0, 0)
    Logged = true
  elseif(Logged == true) then
     outputChatBox ("[CarShop] Voce já está autenticado.", 255, 0, 0)
  else
    outputChatBox ("[CarShop] Não autenticado.", 255, 0, 0)
  end
end

function LogoutOwner(user, pass)
  if(Logged == true) then
    Logged = false
    outputChatBox ("[CarShop] Você foi deslogado.", 255, 0, 0)
  end
end

function AddVehicleShop(idvehicle, price)
  if(Logged == true) then
    if (exists(idvehicle)) then
      return outputChatBox ("[CarShop] Este veiculo ja foi adicionado", 255, 0, 0)
    end
    carname = idvehicle
    table.insert(VehiclesShop, {idvehicle = idvehicle, price = price})
    outputChatBox ("[CarShop] O Veiculo: "..carname.." foi adicionado por "..price.." R$", 255, 0, 0)
  end
end


function removeVehicle(idvehicle)
  if(Logged == true) then
    table.remove(VehiclesShop, idvehicle)
    outputChatBox("[CarShop] O Veiculo:" ..carname.. " foi removido da concessionaria.", 255, 0, 0)
  end
end