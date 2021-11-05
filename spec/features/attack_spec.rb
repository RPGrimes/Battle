feature 'Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Ben attacked Ryan'
  end 

  scenario 'attack Player 1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Next turn')
    click_button('Attack')
    expect(page).to have_content 'Ryan attacked Ben'
  end 
end 

feature 'Attacking' do 
  scenario 'attacking reduces health' do 
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Ryan: 50hp'
  end 

  scenario 'attacking reduces health' do 
    sign_in_and_play
    click_button('Attack')
    click_button('Next turn')
    click_button('Attack')
    expect(page).to have_content 'Ben: 50hp'
  end 
end