addCommandHandler("login_carshop", function (_, user, pass)
  signIn(user, pass)
end)

addCommandHandler("logout_carshop", function ()
  logout()
end)

addCommandHandler("add_carshop", function (_, vehicles, amount, price)
  addVehicle(vehicles, amount, price)
end)

addCommandHandler("remove_carshop", function (_, vehicles)
  removeVehicle(vehicles)
end)

addCommandHandler("vehicles_carshop", function ()
  vehicles_carshop()
end)