class Zoo
    attr_reader :name, :location
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location


        @@all << self
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        animals.map(&:species).uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nicknames
        animals.map(&:nickname)
    end

    def self.find_by_location(location)
        Zoo.all.select{|zoo| zoo.location == location}
    end

    def self.all
        @@all
    end
end
