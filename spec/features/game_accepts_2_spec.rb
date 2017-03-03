require "game_class"
describe "game players" do
  it 'accepts two players' do
     player1 = Player.new("John")
     player2 = Player.new("David")
    game = Game.new(player1, player2)
    expect(game.player1.name).to eq("John")
    expect(game.player2.name).to eq("David")
  end
end
