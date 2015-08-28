-- Programme startup
while true do

  -- A modifier
  moniteur = "right" --Emplacement du moniteur
  reacteur = "BigReactors-Reactor_2" --Emplacement du Network Cable
  sirene = "back" -- Emplacement de  l' alarme en cas de surchauffe
  
  -- Script
  m = peripheral.wrap(moniteur)
  r = peripheral.wrap(reacteur)
  m.clear()
  m.setCursorPos(5,1)
  m.write("Information sur le BigReacteur")
  m.setCursorPos(1,3)
  m.write("Etats du reacteur: ")
  if r.getActive() == false then
    m.setTextColor(colors.red)
    m.write("Eteint")
    m.setTextColor(colors.white)
    elseif r.getActive() == true then
      m.setTextColor(colors.green)
      m.write("Allume")
      m.setTextColor(colors.white)
  end
  m.setCursorPos(1,6)
  m.write("Energie Stocker : "..string.format(r.getEnergyStored()).." RF")
  m.setCursorPos(1,9)
  m.write("Production : "..string.format(r.getEnergyProducedLastTick()).." RF/T")
  m.setCursorPos(1,12)
  m.write("Temperature: ")
  if r.getFuelTemperature() > 2500 then
    m.setTextColor(colors.red)
    m.setBackgroundColor(colors.orange)
    m.write(string.format(r.getFuelTemperature()).." C")
    rs.setOutput(sirene, true)
    m.setTextColor(colors.white)
    elseif r.getFuelTemperature() > 2000 then
      m.setTextColor(colors.orange)
      m.write(string.format(r.getFuelTemperature()).." C")
      rs.setOutput(sirene, false)
      m.setBackgroundColor(colors.black)
      m.setTextColor(colors.white)
      else
        m.write(string.format(r.getFuelTemperature()).." C")
        m.setBackgroundColor(colors.black)
        rs.setOutput(sirene, false)
  end
  m.setCursorPos(1,15)
  m.write("Carburant: ")
  if r.getFuelAmount() < 5000 then
    m.setTextColor(colors.red)
    m.write(string.format(r.getFuelAmount()).." MB")
    m.setTextColor(colors.white)
    elseif r.getFuelAmount() > 5000 then
    m.write(string.format(r.getFuelAmount()).." MB")
  end
  m.setCursorPos(1,18)
  m.write("Consomation du Carburant: "..string.format(r.getFuelConsumedLastTick()).." MB/T")
  sleep(1)
end
