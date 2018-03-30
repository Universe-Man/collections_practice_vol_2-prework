require "pry"

def begins_with_r(array)
  q = 0
  i = 0
  until i == array.length
    if array[i].start_with?("r")
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

def contain_a(array)
  answerArray = []
  i = 0
  until i == array.length
    if array[i].include?("a")
      answerArray.push(array[i])
    end
    i += 1
  end
  return answerArray
end

def first_wa(array)
  i = 0
  until i == array.length
    if array[i].class == :symbol.class
       string = array[i].to_s
       if string.start_with?("wa")
         return string
       end
    elsif array[i].start_with?("wa")
      return array[i]
    end
    i += 1
  end
end

def remove_non_strings(array)
  newArray = []
  i = 0
  until i == array.length
    if array[i].class == "string".class
      newArray.push(array[i])
    end
    i += 1
  end
  newArray
end

def count_elements(array)
  newArray = []
  i = 0
  until i == array.length
    theCount = array.count(array[i])
    newArray.push(array[i])
    newArray.push({:count=>theCount})
    i += 1
  end
  newArray
end
