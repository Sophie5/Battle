
describe "test" do
it "enters names and shows them on screen" do
  visit('/')
  fill_in('Player1', with: 'John')
  fill_in('Player2', with: 'David')
  click_button('Submit')
  expect(page).to have_content('John vs David')
end
end
