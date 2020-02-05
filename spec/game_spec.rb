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

  it 'returns a score of twelve when a spare is scored with 1 bonus point' do
    game = Game.new
    game.roll(1)
    game.roll(9)
    game.roll(1)
    17.times { game.roll(0) }
    expect(game.score).to eq 12
  end

  it 'returns a score of fourteen when a strike is scored with 2 bonus points' do
    game = Game.new
    game.roll(10)
    game.roll(1)
    game.roll(1)
    16.times { game.roll(0) }
    expect(game.score).to eq 14
  end

  it 'returns a score of 300 for a perfect game' do
    game = Game.new
    12.times { game.roll(10) }
    expect(game.score).to eq 300
  end
end
