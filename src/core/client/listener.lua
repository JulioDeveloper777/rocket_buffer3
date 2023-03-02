addCommandHandler("login_carshop", function (_, user_carshop, password_carshop)
  SignInOwner(user_carshop, password_carshop)
end)

addCommandHandler("logout_carshop", function (_, carid, price)
  LogoutOwner(user, pass)
end)

addCommandHandler("add_carshop", function (_, idvehicle, price)
  AddVehicleShop(idvehicle, price)
end)

addCommandHandler("remove_carshop", function (_, vehicleid, price)
  removeVehicle(idvehicle)
end)

addCommandHandler("vehicles_carshop", function (_, vehicleid, price)
  iprint(getVehicles())
end)