def sign_in_and_play
  fill_in('player1', with: 'John')
  fill_in('player2', with: 'David')
  click_button('Submit')
end
