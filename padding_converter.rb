module Converter
    def convert(string)
        # we have to take the string, and return the padded array, where each element in the array has 32/64 bits
        # we are modifying the algorithm, such that we get an array of size n*16*(64/32) bits/ n*16*size_of_word bytes
        # now, we have a certain number of characters that contain 8 bits/ 1 byte each. 
        # we will use ord to get asci number of characters.
        size_of_word = 0.size
        size_of_string = string.length/size_of_word
        if string.length%size_of_word!=0
            size_of_string+=1
        end
        size_of_string += 1
        no_of_words = size_of_string
        # puts "no_of_words is " + no_of_words.to_s
        # now, no_of_size_of_words is the number of words that we need to store padded string
        final_array = []
        integer = 0
        for i in 0..string.length-1 do
            # puts "i is init"+ i.to_s
            integer += string[i].ord
            if i%size_of_word != size_of_word-1
                integer*= 2**(8)
            else
                # puts integer
                final_array.push(integer)
                integer=0
            end
        end
        if (string.length-1)%size_of_word!=size_of_word-1 
            final_array.push(integer)
        end
        final_array.push(string.length)
        for i in 1..(16-(no_of_words%16)) do
            # puts "i is "+ i.to_s
            final_array.insert(-2,0)
        end
        # puts "length of it is " + final_array.length.to_s
        return final_array
    end
end