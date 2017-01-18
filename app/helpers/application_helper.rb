module ApplicationHelper

  def convert_time(time)
    time.strftime("%b %e, %H:%M")
  end

  def money_format(money)
    money.round(2)
  end

end



