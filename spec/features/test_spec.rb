describe "test" do
it "enters names and shows them on screen" do
  visit('/')
  sign_in_and_play
  expect(page).to have_content('John vs David')
end
end
