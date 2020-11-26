module converter
    def convert(string)
        # we have to take the string, and return the padded array, where each element in the array has 32/64 bits
        # we are modifying the algorithm, such that we get an array of size n*16*(64or32) bits/ n*16*size_of_word bytes
        # now, we have a certain number of characters that contain 8 bits/ 1 byte each. 
        # we will use ord to get asci number of characters.
        size_of_word = 0.size
        # if it's 8 then 64 bits is one word, otherwise it's 32?
        size_of_string = string.length
        size_of_string += 64/size_of_word
        no_of_size_of_words = (size_of_string*8)/size_of_word
        no_of_size_of_words += no_of_size_of_words%16
        # now, no_of_size_of_words is the number of words that we need to store padded string
        final_array = []


    end
end