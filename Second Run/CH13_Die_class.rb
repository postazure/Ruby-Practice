class Die
  def initialize
    roll
  end

  def roll
    @number_showing = rand(6)+1
  end
  def showing
    @number_showing
  end

end

dice = [Die.new, Die.new]
die1 = Die.new

dice.each do |die|
  puts die.roll
end
# die1.roll
puts die1.showing
