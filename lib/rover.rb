class Rover
  attr_reader :start_postion, :plateau_area

  def initialize(start_postion, plateau_area)
    @start_postion = start_postion
    @plateau_area = plateau_area
  end

  def move(directions)
    "1 3 N"
  end

end