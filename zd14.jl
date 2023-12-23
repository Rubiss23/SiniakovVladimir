using HorizonSideRobots
include("func.jl")
robot = BorderRobot(ChessRobot(Robot("sits/zd14.sit",animate = true),true))


function zd14(robot)
    back_path = move_to_angle!(robot)
    snake_border!(robot; start_side = Ost, ortogonal_side = Nord)
    gocorner(robot, Sud, West)
    move!(robot, back_path)
end

