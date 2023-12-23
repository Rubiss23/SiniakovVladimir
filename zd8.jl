include("func.jl")
robot = Robot("sits/zd8.sit", animate = true)

function fast_move_marker!(stop_condition::Function, robot, b, side)

    for i in 1:b

        if !stop_condition()
            move!(robot,side)
        else break
        end

    end

end
function zd8(robot)
    start_p = West
    stop_condition = ()->ismarker(robot)
    b=1
    a = start_p
    while ismarker(robot) == false
        fast_move_marker!(stop_condition, robot, b, a)
        a = right(a)
        if a == start_p || a == inverse(start_p)
            b+=1
        end
    end



end