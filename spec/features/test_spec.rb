
describe "test" do
it "checks for name" do
  visit('/')
  expect(page).to have_content('Testing infrastructure working!')
end
end
