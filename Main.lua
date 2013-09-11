--Main Execution Code

local TreeFarmAPI = require "TreeFarmAPI"

function Main()
    while true do
        TreeFarmAPI.Plant()
        TreeFarmAPI.Fell()
        TreeFarmAPI.Refuel(4)
        TreeFarmAPI.Store()
        sleep(5)
    end
end
