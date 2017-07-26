class BowlingGame
  def initialize
    @rolls = []
  end
  def roll(pinsDown)
    @rolls.push(pinsDown)
  end
  def score? 
    score = 0
    for frameIndex in 1..10
      if isSpare? frameIndex
        score += 10 + @rolls[(frameIndex-1)*2 + 2]
      elsif isStrike? frameIndex
        score += 10 + @rolls[(frameIndex-1)*2 + 1] + @rolls[(frameIndex-1)*2 + 2] 
      else
        score += frameTotal? frameIndex
      end
    end
    score
  end
  def isStrike? frameIndex
    if(@rolls[(frameIndex-1)* 2] == 10)
      true
    else
      false
    end
  end
  def isSpare? frameIndex
    if(@rolls[(frameIndex-1)*2] + @rolls[(frameIndex-1)*2 + 1] == 10)
      true
    else
      false
    end
  end
  def frameTotal? frameIndex
    @rolls[(frameIndex-1)*2] + @rolls[(frameIndex-1)*2 + 1]
  end
end
