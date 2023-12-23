using HorizonSideRobots
include("func.jl")

robot = BorderRobot(Robot("sits/zd6.sit",animate = true));

function rekmove!(robot,i)

    if try_move!(robot,i)
        rekmove!(robot,i)
        try_move!(robot,inverse(i))
    else
        putmarker!(robot)
    end

    
    
end

function zd6(robot,variant)

    if variant == true

        x = movealong!(robot,West)
        y = movealong!(robot,Nord)
        while !isborder(robot,Nord) || !isborder(robot,West)
            if !isborder(robot,West)
                x+=movealong!(robot,West)
                side1 = West
                side2 = Nord
            elseif !isborder(robot,Nord)
                y+=movealong!(robot,Nord)
                side1 = Nord
                side2 = West
            end
        end
        println(x," ", y)
        perimetr(robot,Ost)
        gohome!(robot,West,Nord,x,y)

    else

        for i in sides
            rekmove!(robot,i)
        end

    end

    
    
end