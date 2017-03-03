require './lib/player_class'
require './lib/game_class'

describe Player do
  subject(:john) {Player.new('John')}
  subject(:david) {Player.new('David')}
  # let(:game) { Game.new}

  describe "name" do
  it" returns it's name" do
   expect(john.name).to eq("John")
  end
 end
 describe "player attack" do
   it 'responds to attack' do
    game = Game.new(@player1, @player2)
    expect(game).to respond_to(:attack)
  end

  it 'attack reduces hit points' do
   game = Game.new(@player1, @player2)
   expect{game.attack(david)}.to change{david.hit_points}.by -10
 end

 end
end
