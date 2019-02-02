m = peripheral.wrap("right")
m.clear();
xmin1 = 7; xmax1 = 15; ymin1 = 21; ymax1 = 23;
xmin2 = 25; xmax2 = 33; ymin2 = 21; ymax2 = 23;

function button1()
	m.setCursorPos(1,1)
	m.write("clic bt1")
	createbutton(xmin1,xmax1,ymin1,ymax1,"Restart",colors.red);
	createbutton(xmin2,xmax2,ymin2,ymax2,"Send Code",colors.green);
end
function button2()
	m.setCursorPos(1,1)
	m.write("clic bt2")
	createbutton(xmin2,xmax2,ymin2,ymax2,"Send Code",colors.red);
	createbutton(xmin1,xmax1,ymin1,ymax1,"Restart",colors.green);
end
function createbutton(xmin,xmax,ymin,ymax,word,color)
	for x=xmin,xmax do
		for y=ymin,ymax do
			m.setCursorPos(x,y);
			m.setBackgroundColor(color);
			m.write(" ");
		end
	end
	lenx = xmax-xmin
	leny = ymax-ymin
	lenword = string.len(word)
	xword = (lenx-lenword+1)/2
	yword = leny/2
	m.setCursorPos(xmin+xword,ymin+yword)
	m.write(word)
	m.setBackgroundColor(colors.black)
end 
function getclic()
	xc = 0;
	yc = 0;
	event,side,xc,yc = os.pullEvent("monitor_touch");
	print(xc, " ", yc, " ", xmin1, " ",xmax1, " ",ymin1, " ", ymax1)
	if (xc > xmin1) and (xc < xmax1) and (yc > ymin1) and (yc < ymax1) then
		button1();
	end
	if xc > xmin2 and xc < xmax2 and yc > ymin2 and yc < ymax2 then
		button2();
	end
end
createbutton(xmin1,xmax1,ymin1,ymax1,"Restart",colors.green)
createbutton(xmin2,xmax2,ymin2,ymax2,"Send code",colors.green)
while true do
	getclic();
end

