class BowlingGame
  def initialize
    @frames = []
    @frameCount = 1
    @rollCount = 0
    @currentPinsDown = 0
  end
  def roll(pinsDown)
    if @rollCount == 0 then
      @currentPinsDown = pinsDown
      @rollCount += 1
    else
      @currentPinsDown += pinsDown
      @frames.push(@currentPinsDown)
      initFrame
    end
  end
  def score? 
    @frames.reduce(0, :+) + @currentPinsDown
  end
  def initFrame
    @rollCount = 0
    @frameCount += 1
    @currentPinsDown = 0
  end
end
