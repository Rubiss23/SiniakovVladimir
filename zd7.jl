include("func.jl")
robot = Robot("sits/zd7.sit",animate = true);

function zd7(robot)

    step = 1
    side = Ost

    while isborder(robot,Nord)
        for i in 1:step
            move!(robot,side)
        end
        if isborder(robot,Nord)
            side = inverse(side)
            step+=1
        else
            break
        end
    end
    
end