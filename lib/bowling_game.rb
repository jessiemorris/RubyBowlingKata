class BowlingGame
  def initialize
    @rolls = []
  end
  def roll(pinsDown)
    @rolls.push(pinsDown)
  end
  def score? 
    score = 0
    currentFrameIndex = 0
    for frame in 1..10
      if isSpare? currentFrameIndex
        score += 10 + @rolls[currentFrameIndex + 2]
        currentFrameIndex += 2
      elsif isStrike? currentFrameIndex
        score += 10 + @rolls[currentFrameIndex + 1] + @rolls[currentFrameIndex + 2]
        currentFrameIndex += 1
      else
        score += frameTotal? currentFrameIndex
        currentFrameIndex += 2
      end
    end
    score
  end
  def isStrike? frameIndex
    if(@rolls[frameIndex] == 10)
      true
    else
      false
    end
  end
  def isSpare? frameIndex
    if (@rolls[frameIndex] + @rolls[frameIndex + 1] == 10)
      true
    else
      false
    end
  end
  def frameTotal? frameIndex
    (@rolls[frameIndex] || 0) + (@rolls[frameIndex + 1] || 0)
  end
end
