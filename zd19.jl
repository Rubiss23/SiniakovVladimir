include("func.jl")
robot = Robot(animate = true)

function zd19(robot,side)

    if !isborder(robot,side)
        move!(robot,side)
        zd19(robot,side)
    end
    
end