class Rover
  attr_reader :start_position, :plateau_area

  def initialize(start_position, plateau_area)
    @start_position = start_position
    @plateau_area = plateau_area
  end

  def move(instructions)

    x = @start_position[0]
    y = @start_position[1]
    compass = ['W', 'N', 'E', 'S']
    compass_counter = compass.index(@start_position[2])
    facing = 'N'

    directions = instructions.chars

    directions.each do |direction|
      if direction == 'R'
        compass_counter += 1
        facing = compass[compass_counter]
      end
      if direction == 'L'
        compass_counter -= 1
        facing = compass[compass_counter]
      end
      if direction == 'M'
        y += 1
      end
    end

    "#{x} #{y} #{facing}"

  end

end