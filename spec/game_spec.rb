require 'game'

describe Game do
  it 'returns a score of zero when no pins are knocked down' do
    game = Game.new
    20.times { game.roll(0) }
    expect(game.score).to eq 0
  end

  it 'returns a score of one when one pin is knocked down' do
    game = Game.new
    game.roll(1)
    19.times { game.roll(0) }
    expect(game.score).to eq 1
  end
end
