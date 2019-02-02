side = "right";
m = peripheral.wrap(side);
m.clear();
xm,ym = m.getSize();
print(xm, " ; ", ym);
for x=1,xm do
	m.setCursorPos(x, 1);
	m.write("1");
	m.setCursorPos(x, ym);
	m.write("1");
end
for y=1,ym do
	m.setCursorPos(1, y);
	m.write("1");
	m.setCursorPos(xm, y);
	m.write("1");
end
xc = xm/2;
yc = ym/2
m.setCursorPos(xc, yc);
m.write("c")
