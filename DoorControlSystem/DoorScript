-- door 1 control
rednet.open("top");
doorcontrolid = 7;
while true do
	button = redstone.getInput("right");
	print(button);
	if button == true then
		rednet.send(doorcontrolid, code);
		id, data = rednet.receive(10);
		print(data," ; ",id);
		if data == "ok" and id == doorcontrolid then
			rs.setOutput("left", true);
			sleep(8);
			rs.setOutput("left", false);
		end
	end
	sleep(1);
end
