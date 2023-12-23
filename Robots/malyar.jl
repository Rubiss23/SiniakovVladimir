using HorizonSideRobots
HSR = HorizonSideRobots

mutable struct MalyarRobot{TypeRobot} <: AbstractRobot
    robot::TypeRobot
end
get_baserobot(robot::MalyarRobot) = robot.robot

function HSR.move!(robot::MalyarRobot,Side)

    putmarker!(get_baserobot(robot))
    move!(get_baserobot(robot),Side)
    putmarker!(get_baserobot(robot))
    
end