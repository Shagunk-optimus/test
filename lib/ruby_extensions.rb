def array_increments_by?(step, array)
  sorted = array.sort
  lastNum = sorted[0]
  sorted[1, sorted.count].each do |n|
    if lastNum + step != n
      return false
    end
    lastNum = n
  end
  true
end
