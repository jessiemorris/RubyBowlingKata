require_relative '../lib/bowling_game.rb'

describe BowlingGame do

  it "returns 0 when asked for score" do
    game = BowlingGame.new
    game.roll(8)
    expect(game.score?).to eq(8)
  end

end 
