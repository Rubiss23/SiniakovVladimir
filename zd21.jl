using HorizonSideRobots
include("func.jl")

robot = BorderRobot(Robot(animate = true))

function zd21(robot,side,n)

    if n==0
        return
    end

    if !try_move!(robot,side)
        return
    end

    zd21(robot,side,n-1)
    
end