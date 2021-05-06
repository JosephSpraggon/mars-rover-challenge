require 'rover'

test_rover = Rover.new([1, 2, 'N'], [5, 5])
test_rover_b = Rover.new([3, 3, 'E'], [5, 5])

describe Rover do

  it 'can create a rover object' do
    expect(test_rover).to be_an_instance_of(Rover)
  end

  it 'is initializes rover objects with starting position and the plateau area' do
    expect(test_rover.start_position).to eq([1, 2, 'N'])
    expect(test_rover.plateau_area).to eq([5, 5])
  end

  context '#move' do

    it 'can move one space north' do
      expect(test_rover.move('M')).to eq('1 3 N')
    end

    it 'can turn to the right' do
      expect(test_rover.move('R')).to eq('1 2 E')
    end

    it 'can turn to the left' do
      expect(test_rover.move('L')).to eq('1 2 W')
    end

    it 'can turn to face south' do
      expect(test_rover.move('RR')).to eq('1 2 S')
    end

    it 'can move one space to the East' do
      expect(test_rover.move('RM')).to eq('2 2 E')
    end

    it 'can move one space to the West' do
      expect(test_rover.move('LM')).to eq('0 2 W')
    end

    it 'can move one space to the South' do
      expect(test_rover.move('RRM')).to eq('1 1 S')
    end

    it 'can run the first test input example' do
      expect(test_rover.move('LMLMLMLMM')).to eq('1 3 N')
    end

    it 'can run the second test input example' do
      expect(test_rover_b.move('MMRMMRMRRM')).to eq('5 1 E')
    end

    it 'can make more than 3 turns left' do 
      expect(test_rover_b.move('MMLMMLMLLMLL')).to eq('5 5 W')
    end

  end

end