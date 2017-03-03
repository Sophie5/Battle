describe "attack" do
it "confirms an attack has been successful" do
  visit('/')
  sign_in_and_play
  click_button('Attack')
  click_button('ok')
  expect(page).to have_content("David 90/100 hp")
 end
end
