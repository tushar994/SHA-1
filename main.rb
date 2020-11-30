require_relative "math_functions"
require_relative "padding_converter"
include Converter
include Math_func

puts "please give a value to hash"
plaintext = gets

padded_array =  Converter.convert(plaintext)
# print padded_array
# print "\n"
# print Math_func.get_80_cells(padded_array)

h_array = [1742612993, -1157373300, 18805212, -1835800094, -839965783]

for i in 0...padded_array.length/16 do
    h_array =  Math_func.modify_5(h_array,Math_func.get_80_cells( padded_array[ i*16, 16 ] ) )
    # print h_array
    # print "\n"
end
Math_func.get_final_hash(h_array)




print "\n"
