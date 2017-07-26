class BowlingGame
  def initialize
    @rolls = []
  end
  def roll(pinsDown)
    @rolls.push(pinsDown)
  end
  def score? 
    score = 0

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
end
