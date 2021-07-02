class Centaur
  attr_reader :name,
              :breed,
              :run

  def initialize(name, breed)
    @name  = name
    @breed = breed
    @shots = 0
    @run   = 0
    @stand = true
    @stuck = false
  end

  def cranky?
    if @run >= 1
      return true
    else
      return false
    end
  end

  def standing?
    @stand
  end

  def shoot
    if standing? && @shots < 3
      @shots += 1
      p 'Twang!!!'
    else
      p 'NO!'
    end
  end

  def run
    if laying?
      p 'NO!'
    else
      @run += 1
      p 'Clop clop clop clop!'
    end
  end

  def sleep
    if @stand == true
      p 'NO!'
    else
      @shots = 0
      @run   = 0
    end
  end

  def lay_down
    @stand = false
  end

  def laying?
    !@stand
  end

  def stand_up
    @stand = true
  end

  def drink_potion
    if (@shots + @run) == 0
      @stuck = !@stuck
    elsif standing?
      @shots = 0
      @run   = 0
    else
      p 'NO!'
    end
  end

  def stuck?
    @stuck
  end
end
