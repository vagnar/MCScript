-- à edit
moniteur = "back"
reacteur = {"BigReactors-Reactor_0","BigReactors-Reactor_1","BigReactors-Reactor_3","BigReactors-Reactor_2","BigReactors-Reactor_4","BigReactors-Reactor_5"}

-- Script
m = peripheral.wrap(moniteur)
r = {peripheral.wrap(reacteur[1]),peripheral.wrap(reacteur[2]),peripheral.wrap(reacteur[3]),peripheral.wrap(reacteur[4]),peripheral.wrap(reacteur[5]),peripheral.wrap(reacteur[6])}

m.clear()
while true do
	m.clear()
	m.setCursorPos(3, 1)
	m.write("Etats Reacteurs")
	y=2
	for i=1,#r do
		m.setCursorPos(1,y)
		m.write("Reacteur "..i.." : ")
		if r[i].getActive() == false then
			m.setTextColor(colors.red)
			m.write("OFF")
			m.setTextColor(colors.white)
		elseif r[i].getActive() == true then
			m.setTextColor(colors.green)
			m.write("ON")
			m.setTextColor(colors.white)
		end
		y=y+2
	end
	sleep(5)
end


