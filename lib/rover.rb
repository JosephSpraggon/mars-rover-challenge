class Rover
  attr_reader :start_position, :plateau_area

  def initialize(start_position, plateau_area)
    @start_position = start_position
    @plateau_area = plateau_area
  end

  def move(instructions)

    x = @start_position[0]
    y = @start_position[1]
    compass = @start_position[2]


    directions = instructions.chars

    directions.each do |direction|
      if direction == 'M'
        y += 1
      end
    end

    "#{x} #{y} #{compass}"

  end

end