require 'rover'

describe Rover do
  it 'can create a rover object' do
    expect(subject).to be_an_instance_of(Rover)
  end

  it 'is initializes rover objects with starting position and the plateau area' do
    expect(subject.start_postion).to eq('1 2 N')
    expect(subject.plateau_area).to eq('5 5')
  end

end