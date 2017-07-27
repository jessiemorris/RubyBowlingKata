require 'bowling_game.rb'

describe BowlingGame do

  #Utility Method Checks
  it "returns true when checking for a spare in frame 1" do
    game = BowlingGame.new
    game.roll(9)
    game.roll(1)
    game.roll(3)
    expect(game.isSpare(0)).to eq(true)
  end
  it "returns true when checking for a strike in frame 1" do
    game = BowlingGame.new
    game.roll(10)
    game.roll(5)
    expect(game.isStrike(0)).to eq(true)
  end
  it "returns false when checking for a spare in frame 1" do
    game = BowlingGame.new
    game.roll(8)
    game.roll(1)
    game.roll(3)
    expect(game.isSpare(0)).to eq(false)
  end
  it "returns false when checking for a strike in frame 1" do
    game = BowlingGame.new
    game.roll(9)
    game.roll(5)
    expect(game.isStrike(0)).to eq(false)
  end

  it "returns 80 when 10 frames of 8s are rolled" do
    game = BowlingGame.new
    for frame in 1..10
      game.roll(8)
      game.roll(0)
    end
    expect(game.score).to eq(80)
  end
  it "returns 28 for single spare game" do
    game = BowlingGame.new
    game.roll(9)
    game.roll(1)
    game.roll(9)
    game.roll(0)
    for frame in 3..10
      game.roll(0)
      game.roll(0)
    end
    expect(game.score).to eq(28)
  end
  it "returns 300 for a perfect game" do
    game = BowlingGame.new
    for roll in 1..12
      game.roll(10)
    end
    expect(game.score).to eq(300)
  end
  it "returns "
end 
