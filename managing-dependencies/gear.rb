require_relative 'wheel.rb'

class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  #TODO Wheel's reference generate a dependency
  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end

  def ratio
    @chainring / @cog.to_f
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
