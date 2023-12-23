include("func.jl")
robot = Robot(animate = true)

function rekmove!(robot,side)

    if !isborder(robot,side)
        move!(robot,side)
        putmarker!(robot)
        rekmove!(robot,side)
        move!(robot,inverse(side))
    end

end
    
function zd1(robot)

    for i in sides

        rekmove!(robot,i)
    
    end
    putmarker!(robot)
    
end
