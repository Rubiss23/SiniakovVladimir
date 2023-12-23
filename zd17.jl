include("func.jl")
robot = Robot("sits/zd8.sit",animate = true)

function zd17(robot)

    spiral(()->ismarker(robot),robot)

    
end