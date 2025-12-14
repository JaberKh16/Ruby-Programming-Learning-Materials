# working with type conversion in Ruby
int_var = 10
float_var = 5.75
str_var = "100"


# convert integer to float
converted_float = int_var.to_f
puts "Integer to Float: #{converted_float} (#{converted_float.class})"
# convert float to integer
converted_int = float_var.to_i
puts "Float to Integer: #{converted_int} (#{converted_int.class})"
# convert string to integer
converted_str_to_int = str_var.to_i
puts "String to Integer: #{converted_str_to_int} (#{converted_str_to_int.class})"
# convert string to float
converted_str_to_float = str_var.to_f
puts "String to Float: #{converted_str_to_float} (#{converted_str_to_float.class})"
# convert integer to string
converted_int_to_str = int_var.to_s
puts "Integer to String: '#{converted_int_to_str}' (#{converted_int_to_str.class})"
# convert float to string
converted_float_to_str = float_var.to_s
puts "Float to String: '#{converted_float_to_str}' (#{converted_float_to_str.class})"
# convert integer to boolean
converted_int_to_bool = int_var != 0
puts "Integer to Boolean: #{converted_int_to_bool} (#{converted_int_to_bool.class})"
# convert float to boolean
converted_float_to_bool = float_var != 0.0
puts "Float to Boolean: #{converted_float_to_bool} (#{converted_float_to_bool.class})"
# convert string to boolean
converted_str_to_bool = !str_var.empty?
puts "String to Boolean: #{converted_str_to_bool} (#{converted_str_to_bool.class})"
# convert boolean to string
bool_var = true
converted_bool_to_str = bool_var.to_s
puts "Boolean to String: '#{converted_bool_to_str}' (#{converted_bool_to_str.class})"
# convert boolean to integer
converted_bool_to_int = bool_var ? 1 : 0
puts "Boolean to Integer: #{converted_bool_to_int} (#{converted_bool_to_int.class})"
# convert boolean to float
converted_bool_to_float = bool_var ? 1.0 : 0.0
puts "Boolean to Float: #{converted_bool_to_float} (#{converted_bool_to_float.class})"