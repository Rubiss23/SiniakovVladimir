include("func.jl")
robot = Robot(animate = true);

function zd22(robot,border_side)

    if !isborder(robot,border_side)
        move!(robot,border_side)
        zd22(robot,border_side)
        try_move!(robot,inverse(border_side))
        try_move!(robot,inverse(border_side))
    end
    
end