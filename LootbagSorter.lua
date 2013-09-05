--Lootbag Sorter - Theoretical for now
--Deploys loot bags from a chest behind it into a chest in front
--v0.1
--Latest Major Change: Created
--Latest Minor Change: Created
--Author: V38

function Main()
	while true do
		--START FACING THE BAG CHEST
		turtle.select(1)
		turtle.suck()
		--if turtle getitemcount for all items = 0 then there's nothing to suck, idle or turn off
		turtle.turnRight()
		turtle.place()
		turtle.turnRight()
		for i=1, 16 do
        	turtle.select(i)
        	turtle.drop()
    	end
    	--if turtle getitemcount for all items > 0 then there's no room left, idle or turn off
    	turtle.turnRight()
		turtle.turnRight()
	end
do
