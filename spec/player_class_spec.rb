require 'player_class'
describe Player do
  subject(:john) {Player.new('John')}

  describe "name" do
  it" returns it's name" do
   expect(john.name).to eq("John")
  end
 end
end
