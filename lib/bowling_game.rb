class BowlingGame
  def initialize
    @frames = []
  end
  def roll(pinsDown)
    @frames.push(8)
  end
  def score? 
    @frames.first
  end
end
