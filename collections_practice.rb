require "pry"

def begins_with_r(array)
  q = 0
  i = 0
  until i == array.length
    if array[i].start.with?("r")
      q += 1
    end
    i += 1
  end
  if q == array.length
    return true
  else
    return false
  end
end
