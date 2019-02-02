side = "right";
m = peripheral.wrap(side);
m.clear();
xm,ym = m.getSize();
print(xm, " ; ", ym);
while true do
	event,side,x,y = os.pullEvent("monitor_touch");
	print(x, " ; ", y, " ; ", side);
	sleep(1)
end
