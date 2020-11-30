module Math_func


    def get_final_hash(five_arr)
        string = ""
        size_of_yeah = 0.size
        for i in 0..4 do
            # puts "size of number is " +  five_arr[i].size.to_s
            str = five_arr[i].to_s(16)
            # puts "size of string is " + str.length.to_s
            for l in str.length...size_of_yeah*2 do
                string = string + "0"
            end
            # puts "2size of string is " + str.length.to_s

            string += str
        end
        puts string.length.to_s
        print string + "\n"
    end

    def modify_5(five_init_arr, eight_array)
        five_arr = []
        for i in 0..4 do
            five_arr[i] = five_init_arr[i]
        end
        k_arr = [1518500249, 1859775393, -1894007588, -899497514]
        for i in 1..80 do
            temp = (circular_rotation(five_arr[0],5) + function_math(1,five_arr[1],five_arr[2],five_arr[3]) + five_arr[4] + eight_array[i-1] + k_arr[(i-1)/20])
            five_arr[4] = five_arr[3]
            five_arr[3] = five_arr[2]
            five_arr[2] = circular_rotation(five_arr[1],30)
            five_arr[1] = five_arr[0]
            five_arr[0] = temp
        end
        for i in 0..4 do
            five_arr[i] += five_init_arr[i]
            if five_arr[i].size > (0.size)
                five_arr[i] = five_arr[i]%(2**(0.size*8))
            end
        end
        return five_arr
    end

    def get_80_cells(init_array)
        # what we do here is generate the 80 cells needed from the input 16 cells we get.
        for i in 16...80 do
            insert = circular_rotation( init_array[i-3]^init_array[i-8]^init_array[i-14]^init_array[i-16]  , 1)
            init_array.push(insert)
        end
        # puts "size is " + init_array.length.to_s
        return init_array
    end
    def circular_rotation(number , number_of_times)
        size_of_word = 0.size
        for i in 1..number_of_times
            bit1  = number%2;
            number = number/2;
            number+= bit1*(2**((size_of_word*8) - 1))
        end
        return number
    end

    def function_math(i,b,c,d) 
        if i<=20
            return (b & c) | ((~b)&d)
            
        elsif i<=40 
            return b^c^d
        elseif i<=60
            return (b&c) | (d&c) | (b&d)
        else
            return b^c^d
        end
    end
end