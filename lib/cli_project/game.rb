class Game
    attr_accessor :name, :price, :tags, :description
  
  @@all =[]
  
  def initialize(name = nil, price = nil, tags = nil, description = nil)
    @name = name
    @price = price
    @tags = tags
    @description = description
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find { |game| game.name == name }
  end
  
  def self.all 
    @@all
  end

end


## Responsible for game objects