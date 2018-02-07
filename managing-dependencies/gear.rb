require_relative 'wheel.rb'

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def ratio
    @chainring / @cog.to_f
  end
end

Gear.new(chainring: 52, cog: 11, wheel: Wheel.new(26, 1.5)).gear_inches
