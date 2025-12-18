# working with ruby slop gems
require 'slop'

opts = Slop.parse do |o|
  o.banner = "Usage: #{o.program_name} [options] <arguments>"
  o.bool '-h', '--help', 'print help'
  o.string '-n', '--name', 'print name'
  o.on '-v', '--version', 'print version' do
    puts '0.0.1'
    exit
  end
end

if opts.help?
  puts opts
  exit
end

if opts.name?
  puts "Your name is #{opts[:name]}"
end
