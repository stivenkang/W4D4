def my_unique(arr)
    raise "Invalid Input" if !arr.is_a?(Array)
    unique = []
    arr.each do |ele|
        unique << ele if !unique.include?(ele)
    end
    return unique

    # arr.each_with_index do |ele, i| 
    #     if !unique.include?(ele)
    #         unique << ele 
    #     else
    #         arr.delete(i)
    #     end
    # end
    # arr

    

    # dup_arr = arr.dup
    # arr.reverse!
    #     i = 0
    #     while i < arr.length

end


class Array
    def two_sum
        sum = []
        each_with_index do |ele1, ind1|
            each_with_index do |ele2, ind2|
                sum << [ind1, ind2] if ele1 + ele2 == 0 && ind2 > ind1
            end
        end
        sum
    end
end


def my_transpose(arr)
    transposed = []
    (0...arr.length).each do |i|
        temp_arr = []
        (0...arr[0].length).each do |j|
            temp_arr << arr[j][i]
        end
        transposed << temp_arr
    end
    transposed
end


def stock_picker(stock_days)
    index_arr = []
    total_sum = 0

    (0...stock_days.length - 1).each do |i|
        (i + 1...stock_days.length). each do |j|
            sum = stock_days[j] - stock_days[i]
            if total_sum < sum
                total_sum = sum 
                index_arr = [i, j]
            end
        end
    end
    index_arr
end