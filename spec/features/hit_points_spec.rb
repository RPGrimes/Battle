feature 'View hit Points' do 
  scenario 'see player 2 hit points' do 
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Ryan: 60hp'
  end 
end 