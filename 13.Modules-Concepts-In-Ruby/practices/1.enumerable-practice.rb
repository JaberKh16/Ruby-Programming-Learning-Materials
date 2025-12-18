class Team
  include Enumerable

  attr_accessor :name, :players

  def initialize(name)
    @name = name
    @players = []
  end

  def add_players(*players)
    players.each { |player| @players << player }
  end

  def to_s
    "#{@name} team: #{@players.join(', ')}"
  end

  def each
    @players.each { |player| yield player }
  end

  def filter(player_name)
    @players.include?(player_name)
  end
end

# create an instance
team = Team.new("Avengers")
team.players = ['Tony', 'Bruce', 'Scarlet Witch']
puts team # prints the team object basically returns to_s

loop do
  puts "Enter the hero to be find: "
  input_hero = gets.chomp
  break if input_hero == "exit"
  puts team.filter(input_hero)
end
