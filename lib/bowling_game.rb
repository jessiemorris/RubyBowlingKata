class BowlingGame
  def initialize
    @rolls = []
    @frameCount = 1
    @rollCount = 0
    @currentPinsDown = 0
  end
  def roll(pinsDown)
    @rolls.push(pinsDown)
  end
  def score? 
    @rolls.reduce(0, :+)
  end
end
