describe "hitpoints" do
it "Shows player 2's hit points" do
  visit('/')
  fill_in('player2', with: "David")
  click_button('Submit')
  expect(page).to have_content('David 100/100 hp')
end
end
