require 'player'

describe Player do
  subject(:ben) { Player.new('Ben') }
  subject(:ryan) { Player.new('Ryan') }

  describe '#name' do
    it 'returns the name' do
      expect(ben.name).to eq 'Ben'
    end
  end

  describe '#hp' do
    it 'returns hp' do
      expect(ben.hp).to eq Player::DEFAULT_HP
    end
  end 
end