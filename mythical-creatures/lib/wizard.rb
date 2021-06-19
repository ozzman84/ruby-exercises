class Wizard
  attr_reader :name,
              :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @incantation = 'string'
    @rested = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    @incantation = "sudo #{spell}"
  end

  def rested?
    if @rested > 2
      false
    else
      true
    end
  end

  def cast
    @rested += 1
    "MAGIC MISSILE!"
  end
end
