class Stark
  attr_reader :name,
              :location,
              :house_words

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end

  def guard
    @safe = !@safe
  end

  def abandon
    @safe = !@safe
  end
end
