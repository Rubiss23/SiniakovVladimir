using HorizonSideRobots
include("abstract.jl")

HSR = HorizonSideRobots

mutable struct ChessRobot{TypeRobot} <: AbstractRobot
    robot::TypeRobot
    need_marker::Bool
end

get_baserobot(robot::ChessRobot) = robot.robot

function HSR.move!(robot::ChessRobot,Side)

    if robot.need_marker == true
        putmarker!(get_baserobot(robot))
    end
    move!(get_baserobot(robot),Side)
    robot.need_marker = !robot.need_marker
    if robot.need_marker == true
        putmarker!(get_baserobot(robot))
    end
    
end

HSR.move!(robot::ChessRobot,num_steps::Integer, side) =
    for _ in 1:num_steps
        if robot.need_marker == true
            putmarker!(get_baserobot(robot))
        end
        move!(get_baserobot(robot), side)
        robot.need_marker = !robot.need_marker
        if robot.need_marker == true
            putmarker!(get_baserobot(robot))
        end
    end

println("Чесс тут")