class Rover
  attr_reader :start_position, :plateau_area

  def initialize(start_position, plateau_area)
    @start_position = start_position
    @plateau_area = plateau_area
  end

  def move(instructions)

    x = @start_position[0]
    y = @start_position[1]
    facing = @start_position[2]
    compass = ['W', 'N', 'E', 'S']
    compass_counter = compass.index(facing)

    directions = instructions.chars

    directions.each do |direction|
      if direction == 'R'
        compass_counter == 3 ? (compass_counter = 0) : (compass_counter += 1)
        facing = compass[compass_counter]
      end
      if direction == 'L'
        compass_counter -= 1
        facing = compass[compass_counter]
      end
      if direction == 'M'
        if facing == 'N'
          y += 1
        elsif facing == 'E'
          x += 1
        elsif facing == 'W'
          x -= 1
        elsif facing == 'S'
          y -= 1
        end
      end
    end

    "#{x} #{y} #{facing}"

  end

end