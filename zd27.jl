function sum_vector(vector, current_sum=0, index=1)
    if index > length(vector)
        return current_sum
    else
        return sum_vector(vector, current_sum + vector[index], index + 1)
    end
end

vector = [5,3,2,6,9,2]

sum_vector(vector)