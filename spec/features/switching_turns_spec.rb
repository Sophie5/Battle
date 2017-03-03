# require 'game_class'

describe 'switching turns' do
  it "allows players to take turns" do
    visit('/')
    sign_in_and_play
    click_button('Attack')
    click_button('ok')
    expect(page).to have_content('David\'s turn')
    end
end
