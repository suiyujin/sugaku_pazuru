def kaibun?(str)
  expect_equal_range = 0...(str.size / 2)
  str[expect_equal_range] == str.reverse[expect_equal_range]
end

check_num = 10
loop do
  if kaibun?(check_num.to_s) &&
     kaibun?(check_num.to_s(2)) &&
     kaibun?(check_num.to_s(8))
    puts check_num
    break
  end

  check_num += 1
end
