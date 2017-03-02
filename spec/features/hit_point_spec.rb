describe "hitpoints" do
it "Shows player 2's hit points" do
  visit('/')
  sign_in_and_play
  expect(page).to have_content('David 100/100 hp')
end
end
