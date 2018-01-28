require_relative 'wheel.rb'

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  #TODO Wheel's reference generate a dependency
  def gear_inches
    ratio * wheel.diameter
  end

  def ratio
    @chainring / @cog.to_f
  end
end

puts Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches
