puts "%02d" %
  case m = gets.to_f / 1000
    when 0 ... 0.1
      0
    when 0.1 .. 5
      m * 10
    when 6 .. 30
      m + 50
    when 35 .. 70
      (m - 30) / 5 + 80
    else
      89
  end
