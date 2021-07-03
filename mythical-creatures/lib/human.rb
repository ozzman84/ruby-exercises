class Human
  attr_reader :name,
              :encounter_counter

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
  end

  def add_encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    @encounter_counter > 2
  end

  def knocked_out?
    @encounter_counter == 6
  end

  def wake_up
    @encounter_counter = 0
  end
end
