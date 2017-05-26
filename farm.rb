class Farm

  attr_reader :field

@@types_of_field = []

def add
  new_field = Farm.new(field)
  @@types_of_field << new_field
end

  def relax
    puts "You can straight chill my dude. Peep those strawbs, enjoi dat field of peaches"
  end

class Corn < Farm
@corn = 20
end

class Wheat < Farm
@wheat = 30
end


class Field

food_per_hectares

    def harvest
    total_harvest = 0
    @@types_of_field.each do |harvest|
    total_harvest += harvest
    end
  end
end
