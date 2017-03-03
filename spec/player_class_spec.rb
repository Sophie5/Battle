require 'player_class'
describe Player do
  subject(:john) {Player.new('John')}

  describe "name" do
  it" returns it's name" do
   expect(john.name).to eq("John")
  end
 end
 describe "player attack" do
   it ' responds to attack' do
    expect(john).to respond_to(:attack)
  end
 end
end
