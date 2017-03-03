describe "attack reducing health " do
  it "reduces players hit points" do
    visit('/')
    sign_in_and_play
    click_button('Attack')
    click_button('ok')
    expect(page).to have_content('90/100 hp')
  end
end
