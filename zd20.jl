include("func.jl")
robot = Robot(animate = true)

function zd20(robot,side)

    if !isborder(robot,side)
        move!(robot,side)
        zd20(robot,side)
        move!(robot,inverse(side))
    else
        putmarker!(robot)
    end
    
end