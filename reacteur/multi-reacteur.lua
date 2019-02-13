-- A modifier
reacteur = {"BigReactors-Reactor_0","BigReactors-Reactor_1","BigReactors-Reactor_3","BigReactors-Reactor_2","BigReactors-Reactor_4","BigReactors-Reactor_5"}
moniteur = "back"

--Programme Ecran
r = {peripheral.wrap(reacteur[1]),peripheral.wrap(reacteur[2]),peripheral.wrap(reacteur[3]),peripheral.wrap(reacteur[4]),peripheral.wrap(reacteur[5]),peripheral.wrap(reacteur[6])}
m = peripheral.wrap(moniteur)
xm,ym = m.getSize()
while true do
	m.clear()
	for y=2,ym do
		m.setCursorPos(35, y)
		m.write("|")
	end
	m.setCursorPos(30,1)
	m.write("Etats Reacteurs")
	k1=3
	k2=3
	z=1
	for i=1,#r do
		x=3
		if i%2 == 1 then
			x=x+36
			k=k2
		else
			k=k1
		end
		m.setCursorPos(x+8,k-1)
		m.write("Reacteur "..z)
		m.setCursorPos(x,k+1)
		m.write("Etats du reacteur: ")
		if r[i].getActive() == true then
			m.setTextColor(colors.green)
			m.write("ON")
			m.setTextColor(colors.white)
		elseif r[i].getActive() == false then
			m.setTextColor(colors.red)
			m.write("OFF")
			m.setTextColor(colors.white)
		end
		m.setCursorPos(x,k+2)
		m.write("Energie stockée: "..string.format(r[i].getEnergyStored()))
		m.setCursorPos(x,k+3)
		m.write("Energie Produite: "..string.format(r[i].getEnergyProducedLastTick()))
		m.setCursorPos(x,k+4)
		m.write("Carburant: "..string.format(r[i].getFuelAmount()))
		m.setCursorPos(x,k+4)
		m.write("Conso. du Carburant: "..string.format(r[i].getFuelConsumedLastTick()))
		for x=1,xm do
			m.setCursorPos(x,k+7)
			m.write("-")
		end
		if i%2 == 1 then
			k2 = k+9
		else
			k1 = k+9
		end
		z = z+1
	end
	

 sleep(5)
end
