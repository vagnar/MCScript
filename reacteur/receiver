while true do
  wifi = "back"
  moniteur = "left"
  m = peripheral.wrap(moniteur)
  rednet.open(wifi)
  id,message = rednet.receive()
  msg = tostring(message)
  print("<"..textutils.formatTime(os.time(),true).."> PC "..id.." : "..msg)
  if msg == "reacteuron" then
    shell.run("reacteuron")
  end
  if msg == "reacteuroff" then
    shell.run("reacteuroff")
  end
end
