
class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name    = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.stoned = true
    if @statues.count > 3
      @statues.find do |statue|
        @statues.first == statue
        statue.stoned = false
      end
      @statues.shift
    end
  end
end
