wifi = "left"
input = ...
id = 7
message  = tostring(input)
rednet.open(wifi)
rednet.send(id, message)
rednet.close(wifi)
print("<D "..os.day().." - H "..textutils.formatTime(os.time(),true)..">".." Message envoyer".." '"..message.."'")
