def sign_in_and_play
  fill_in('player1_name', with: 'John')
  fill_in('player2_name', with: 'David')
  click_button('Submit')
end
