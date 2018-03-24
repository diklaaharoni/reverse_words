require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return nil if my_words == nil
  return my_words if my_words.length == 1
  index = 0

  while index < my_words.length
    while my_words[index] == " "
      index += 1
    end
    j = index
    while my_words[j] != " " && j < my_words.length - 1
      j += 1
    end
    n = index
    m = j
    while n < m
      while my_words[n] == " "
        n += 1
      end
      while my_words[m] == " "
        m -= 1
      end
      temp = my_words[n]
      my_words[n] = my_words[m]
      my_words[m] = temp
      n += 1
      m -= 1
    end
    index = j + 1
  end
  return my_words
end
