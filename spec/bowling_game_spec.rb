require_relative '../lib/bowling_game.rb'

describe BowlingGame do

  it "returns 0 when asked for score of a new game" do
    expect(BowlingGame.new.score?).to eq(0)
  end

  #Utility Method Checks
  it "returns true when checking for a spare in frame 1" do
    game = BowlingGame.new
    game.roll(8)
    game.roll(2)
    game.roll(3)
    expect(game.isSpare?(1)).to eq(true)
  end
  it "returns true when checking for a strike in frame 1" do
    game = BowlingGame.new
    game.roll(10)
    game.roll(5)
    expect(game.isStrike?(1)).to eq(true)
  end
  it "returns false when checking for a spare in frame 1" do
    game = BowlingGame.new
    game.roll(8)
    game.roll(1)
    game.roll(3)
    expect(game.isSpare?(1)).to eq(false)
  end
  it "returns true when checking for a strike in frame 1" do
    game = BowlingGame.new
    game.roll(9)
    game.roll(5)
    expect(game.isStrike?(1)).to eq(false)
  end



  xit "returns 8 when a single 8 is thrown" do
    game = BowlingGame.new
    game.roll(8)
    expect(game.score?).to eq(8)
  end
  xit "returns 9 when 8,1 is thrown" do
    game = BowlingGame.new
    game.roll(8)
    game.roll(1)
    expect(game.score?).to eq(9)
  end

  xit "returns 28 for 9/, 90" do
    game = BowlingGame.new
    game.roll(9)
    game.roll(1)
    game.roll(9)
    expect(game.score?).to eq(28)
  end

end 
