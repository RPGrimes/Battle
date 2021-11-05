require 'game'

describe Game do
  subject(:game) {Game.new(player_1, player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}
  
  describe '#attack' do
  it 'reduces health by 10hp when player attacks' do
    expect(player_2).to receive(:reduce_health)
    game.attack(player_2)  
  end
 end
end 

feature 'Player turn' do 
  scenario 'players switch turns' do 
    sign_in_and_play
    expect(page).to have_content "Ben's turn"
  end 

  scenario 'players switch turns' do 
    sign_in_and_play
    click_button('Attack')
    click_button('Next turn')
    expect(page).to have_content "Ryan's turn"
  end 
end