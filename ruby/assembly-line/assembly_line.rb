class AssemblyLine
  def initialize(speed)
    @speed = speed
    @production_rate = 221
    @success_rate = 100

    if speed > 4 and speed >= 8
      @success_rate = 90
    elsif speed == 9
      @success_rate = 80
    elsif speed == 10
      @success_rate = 77
    end
  end

  def production_rate_per_hour
    (@speed * @production_rate) * (@success_rate/100)
  end

  def working_items_per_minute
    per_minute = ((@speed * @production_rate) * (@success_rate/100)) / 60
    per_minute.floor
  end
end
