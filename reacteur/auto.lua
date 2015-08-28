while true do
  moniteur = "back"
  cube = "bottom"
  reacteur = "left"
 
  m = peripheral.wrap("back")
  c = peripheral.wrap("bottom")
  r = peripheral.wrap("left")
 
  m.clear()
  m.setCursorPos(1,1)
  m.write(string.format(c.getEUStored()))
 
  if r.getEnergyStored() < 9500000 then
    m.setCursorPos(1,2)
    m.write("Reacteur ON")
    --print("<"..textutils.formatTime(os.time()).."> Reacteur ON")
    r.setActive(true)
    elseif r.getEnergyStored() > 9500000 then
     m.setCursorPos(1,2)
     m.write("Reacteur OFF")
     --print("<"..textutils.formatTime(os.time()).."> Reacteur OFF")
     r.setActive(false)
  end
 sleep(1)    
end
