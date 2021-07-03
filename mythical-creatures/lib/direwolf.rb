class Direwolf
  attr_reader :name,
              :home,
              :size,
              :starks_to_protect

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if @home == stark.location && @starks_to_protect.count < 2
      @starks_to_protect << stark
      stark.guard
    end
  end

  def hunts_white_walkers?
    if @starks_to_protect.count == 0
      @hunts_white_walkers
    else
      @hunts_white_walkers = false
    end
  end

  def leaves(stark)
    @starks_to_protect.shift
    stark.abandon
    return stark
  end
end
