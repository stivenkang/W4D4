def my_unique(arr)
    raise "Invalid Input" if !arr.is_a?(Array)
    unique = []
    arr.each do |ele|
        unique << ele if !unique.include?(ele)
    end
    return unique

    # dup_arr = arr.dup
    # arr.reverse!
    #     i = 0
    #     while i < arr.length

end