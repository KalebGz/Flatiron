# class Animal
 
#   attr_reader :my_species
#   def species 
#     @my_species = "cat"
#   end
 
#   def say_species
#     puts "Hi! I'm a #{my_species}"
#   end
# end

# maru = Animal.new
# maru.say_species

class Animal

  # attr_reader :species
  def initialize(species)
    @species = species
  end

  def species
    puts @species
  end
end
frederick = Animal.new("bull")
frederick.species
# => "bull"
