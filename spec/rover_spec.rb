require 'rover'

test_rover = Rover.new('1 2 N', '5 5')

describe Rover do

  it 'can create a rover object' do
    expect(test_rover).to be_an_instance_of(Rover)
  end

  it 'is initializes rover objects with starting position and the plateau area' do
    expect(test_rover.start_postion).to eq('1 2 N')
    expect(test_rover.plateau_area).to eq('5 5')
  end

  context '#move' do

    it 'can move one space north' do
      expect(test_rover.move('M')).to eq('1 3 N')
    end

  end

end