require 'game'

describe Game do
  it 'returns a score of zero when no pins are knocked down' do
    game = Game.new
    20.times { game.roll(0) }
    expect(game.score).to eq 0
  end
end
