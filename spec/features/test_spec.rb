
describe "test" do
it "enters names and shows them on screen" do
  visit('/')
  fill_in('player1', with: 'John')
  fill_in('player2', with: 'David')
  click_button('Submit')
  expect(page).to have_content('John vs David')
end
end
