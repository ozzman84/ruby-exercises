class Dragon
  attr_reader :name,
              :rider,
              :color

  def initialize(name, color, rider)
    @name   = name
    @color  = color
    @rider  = rider
    @hungry = 0
  end

  def hungry?
    if @hungry > 2
      false
    else
      true
    end
  end

  def eat
    @hungry += 1
  end
end
