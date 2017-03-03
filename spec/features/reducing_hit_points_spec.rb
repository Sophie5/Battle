describe "attack reducing health " do
  it "reduces players hit points" do
    visit('/')
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('90/100 hp')
  end
end
