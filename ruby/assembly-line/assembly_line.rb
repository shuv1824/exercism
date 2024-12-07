class AssemblyLine
  def initialize(speed)
    @speed = speed
    @production_rate = 221

 end

  def production_rate_per_hour
    if @speed > 0 and @speed <= 4
      success_rate = 100
    elsif @speed > 4 and @speed <= 8
      success_rate = 90
    elsif @speed == 9
      success_rate = 80
    elsif @speed == 10
      success_rate = 77
    else
      success_rate = 0
    end

    (@speed * @production_rate) * (success_rate/100)
  end

  def working_items_per_minute
    per_minute = production_rate_per_hour / 60
    per_minute.floor
  end
end
