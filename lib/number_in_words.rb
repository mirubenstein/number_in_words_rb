def number_in_words(num)
  num_word_list = {0 => "", 1 => "one", 2 => "two", 3 => "three",
                      4 => "four", 5 => "five", 6 => "six", 7 => "seven",
                      8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
                      12 => "twelve", 13 => "thirteen", 14 => "fourteen",
                      15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
                      18 => "eighteen", 19 => "nineteen", 20 => "twenty",
                      30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
                      70 => "seventy", 80 => "eighty", 90 => "ninety", 100 => "hundred"
                    };
  scale = ['', 'thousand', 'million', 'billion', 'trillion', 'quadrillion', 'quintrillion', 'sextillion', 'septillion', 'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion', 'quattuordecillion', 'quindecillion', 'sexdecillion', 'septendecillion', 'octodecillion', 'novemdecillion', 'vigintillion', 'unvigintillion', 'duovigintillion', 'trevigintillion', 'quattuortillion', 'quinvigintillion', 'sexvigintillion', 'septenvigintillion', 'octovigintillion', 'novemvigintillion', 'trigintillion', 'untrigintillion', 'duotrigintillion', 'trestrigintillion', 'quattuortrigintillion', 'quintrigintillion', 'sextrigintillion', 'septentrigintillion', 'octotrigintillion', 'novemtrigintillion', 'quadragintillion', 'unquadragintillion', 'duoquadragintillion', 'trequadragintillion', 'quattuorquadragintillion', 'quinquadragintillion', 'sesquadragintillion', 'septenquadragintillion', 'octoquadragintillion', 'novenquadragintillion', 'quinquagintillion']

  word_array = []
  i_scale = 0

  while !num.zero?
    f = (num / 1000)
    hundreds_word_array = []
    num, num_sub = num.divmod(1000)
    puts num
    puts '----'
    puts num_sub
    puts '---------------'
    if num_sub >= 100 && num_sub <= 999
      hundreds, num_sub = num_sub.divmod(100)
      hundreds_word_array.push(num_word_list[hundreds])
      hundreds_word_array.push(num_word_list[100])
      if !hundreds.zero? && num_sub.zero?
        hundreds_word_array.push(scale[i_scale])
      end
    end
    if num_sub >= 20 && num_sub <= 99
      tens, num_sub  = num_sub.divmod(10)
      hundreds_word_array.push(num_word_list[tens * 10])
      if !tens.zero? && num_sub.zero?
        hundreds_word_array.push(scale[i_scale])
      end
    end
    hundreds_word_array.push(num_word_list[num_sub])
    if !num_sub.zero?
      hundreds_word_array.push(scale[i_scale])
    end
    num_sub = 0
    i_scale = i_scale.next
    word_array.unshift(hundreds_word_array.join(' ').strip)
  end
  word_array.join(' ').strip.sub(/( )+/, ' ')
end

# puts number_in_words(256)
# puts number_in_words(600)
# puts number_in_words(1250)
# puts number_in_words(1000)
# puts number_in_words(10000)
# puts number_in_words(111111)
# puts number_in_words(100000)
puts number_in_words(90000000)

# irb(main):003:0> 100000.divmod(1000)
# => [100, 0]

# irb(main):004:0> 100.divmod(1000)
# => [0, 100]
