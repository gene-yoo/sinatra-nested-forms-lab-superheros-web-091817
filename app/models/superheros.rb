class Superhero
  attr_accessor :name, :power, :bio

  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @bio = hash[:bio]
  end
end
