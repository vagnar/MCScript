-- door control
rednet.open("top");rednet.open("right");
brainsysid = 6;
doorid = {5,3};
rednet.send(brainsysid, "codepls");
id,code = rednet.receive();
print(id," ; ",code)
if id == brainsysid and code != "restart" then
	while true do
		idd,data = rednet.receive();
		print(data," ;",idd);
		if data == code and (idd == doorid[1] or idd == doorid[2]) then
			rednet.send(idd, "ok");
			print("bon code!");
		elseif idd == brainsysid then
			if data == "restart" then
				os.reboot();
			else
				code = data;
			end
		else
			print("mauvais code !");
		end
		sleep(2);
	end
elseif id == brainsysid and code == "restart" then
	os.reboot();
end
