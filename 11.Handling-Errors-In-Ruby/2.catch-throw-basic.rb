# working with catch throw statement in ruby
catch(:exit_loop) do
    (1..10).each do |i|
        puts "Current number: #{i}"
        if i == 5
            throw :exit_loop  # exit the catch block when i equals 5
        end
    end
end