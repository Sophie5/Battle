
describe "test" do
it "enters names and shows them on screen" do
  visit('/')
  fill_in('name', with: 'John')
  click_button('Submit')
  expect(page).to have_content('John')
end
end
