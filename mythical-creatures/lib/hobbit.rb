class Hobbit
  attr_reader :name,
              :disposition,
              :age,
              :has_ring,
              :is_short

  def initialize(name, disposition = 'homebody')
    @name        = name
    @disposition = disposition
    @age         = 0
    @has_ring    = assign_ring
    @is_short    = true
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age > 32
  end

  def old?
    @age > 100
  end

  def assign_ring
    if @name == 'Frodo'
      @has_ring = true
    else
      @has_ring = false
    end
  end

  def has_ring?
    @has_ring
  end

  def is_short?
    @is_short
  end
end
