# working with global and local variable
$global_var = "I am a global variable"
def display_variables
    local_var = "I am a local variable"
    puts local_var          # Accessing local variable
    puts $global_var       # Accessing global variable
end

display_variables
puts $global_var           # Accessing global variable outside the method
# puts local_var          # This will raise an error as local_var is not accessible here