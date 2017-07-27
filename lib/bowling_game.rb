class BowlingGame
  def initialize
    @rolls = []
  end

  def roll(pinsDown)
    @rolls.push(pinsDown)
  end

  def score
    score = 0
    currentFrameIndex = 0
    # You definitely didn't need a for loop here since you weren't using the frame variable.
    10.times do
      if isSpare currentFrameIndex
        score += 10 + @rolls[currentFrameIndex + 2]
        currentFrameIndex += 2
      elsif isStrike currentFrameIndex
        score += 10 + @rolls[currentFrameIndex + 1] + @rolls[currentFrameIndex + 2]
        currentFrameIndex += 1
      else
        score += frameTotal currentFrameIndex
        currentFrameIndex += 2
      end
    end
    score
  end

  # Predicate methods end in a =?= and they don't use =is=.
  def strike? frameIndex
    # Ruby always returns the value of its last expression, so you don't
    # need to wrap this in an if/else.
    @rolls[frameIndex] == 10
  end

  def spare? frameIndex
    # No need for if/else here either.
    @rolls[frameIndex] + @rolls[frameIndex + 1] == 10
  end

  def frameTotal frameIndex
    (@rolls[frameIndex] || 0) + (@rolls[frameIndex + 1] || 0)
  end
end
