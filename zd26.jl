using HorizonSideRobots
include("func.jl")

robot = BorderRobot(MalyarRobot(Robot("sits/zd26.sit",animate = true)))

function zd26(robot)

    back = move_to_angle!(robot)
    snake_border!(robot; start_side=Nord, ortogonal_side=Ost)
    move_to_angle!(robot)
    move!(robot, back)
    
end