require 'irb'

class System

  @@bodies = []

  attr_reader :bodies

  def add
    add_body = System.new(mass)
    @@bodies << add_body
  end

  def total_mass
    total_mass = 0
    @@bodies.each do |mass|
      total_mass += mass
    end
  end
end

class Body

  attr_reader :name, :mass

   def initialize(name, mass)
     @name = name
     @mass = mass
   end
end

class Planet < Body

  attr_accessor :days, :years

  def initialize(name, mass, days, years)
    @days = days
    @years = years
    super(name, mass)
  end

  def days
    "The planet #{name} has #{days} hours"
  end

  def years
    "The planet #{name} has #{years} days"
  end
end

earth = Planet.new("Earth", 500, 50, 6)

class Star < Body

  attr_accessor :type

  def initialize(name, mass, type)
    @type = type
    super(name, mass)
  end

  def type
    "The sun is a #{type} star"
  end
end

earth = Star.new("Star", 500, "G")

class Moon < Body

  attr_accessor :month, :planet

  def initialize(name, mass, months, planet)
    @month = months
    @planet = planet
    super(name, mass)
  end

  def months
    "It takes #{month} days for the moon to orbit #{@planet.name}"
  end

end

moon = Moon.new("moony", 40, 20, "earth")

binding.irb
