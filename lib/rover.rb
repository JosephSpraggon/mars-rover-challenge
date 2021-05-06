class Rover
  attr_reader :start_position, :plateau_area

  def initialize(start_position, plateau_area)
    @start_position = start_position
    @plateau_area = plateau_area
  end

  def move(instructions)
    navagation_tools
    directions = instructions.chars
    directions.each do |direction|
      if direction == 'R'
        turn_right
      elsif direction == 'L'
        turn_left
      elsif direction == 'M'
        check_in_bounds
        move_forward
      end
    end
    final_position
  end

  private

  def navagation_tools
    @x = @start_position[0]
    @y = @start_position[1]
    @facing = @start_position[2]
    @compass = ['W', 'N', 'E', 'S']
    @compass_counter = @compass.index(@facing)
  end

  def turn_right
    @compass_counter == 3 ? (@compass_counter = 0) : (@compass_counter += 1)
    @facing = @compass[@compass_counter]
  end

  def turn_left
    @compass_counter -= 1
    @facing = @compass[@compass_counter]
  end

  def move_forward
    if @facing == 'N'
      @y += 1
    elsif @facing == 'E'
      @x += 1
    elsif @facing == 'W'
      @x -= 1
    elsif @facing == 'S'
      @y -= 1
    end
  end

  def final_position
    "#{@x} #{@y} #{@facing}"
  end

  def check_in_bounds
    if @x > 5 || @x < 0 || @y > 5 || @y < 0
      raise "Your rover was destoryed by a Martian lazer"
    end   
  end

end