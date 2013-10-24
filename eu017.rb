@letter_count = 0

for n in 1..999
  n = n.to_s
  if n.size == 1
    n = '00' + n
  elsif n.size == 2
    n = '0' + n
  end
  n_arr = n.split('')
  
  hundreds = n_arr[0].to_i
  tens     = n_arr[1].to_i
  ones     = n_arr[2].to_i

  # adds the AND to one hundred AND twenty-five, unless there is no AND, e.g.
  # one hundred
  if (hundreds > 0) && ((tens > 0) || (ones > 0))
    @letter_count += 'and'.size
  end

  case hundreds
  when 0
    @letter_count += 0
  when 1
    @letter_count += 'onehundred'.size
  when 2
    @letter_count += 'twohundred'.size
  when 3
    @letter_count += 'threehundred'.size
  when 4
    @letter_count += 'fourhundred'.size
  when 5
    @letter_count += 'fivehundred'.size
  when 6
    @letter_count += 'sixhundred'.size
  when 7
    @letter_count += 'sevenhundred'.size
  when 8
    @letter_count += 'eighthundred'.size
  when 9
    @letter_count += 'ninehundred'.size
  end

  case tens
  when 0
    @letter_count += 0
  when 1
    case ones
      when 0
        @letter_count += 'ten'.size
      when 1
        @letter_count += 'eleven'.size
      when 2
        @letter_count += 'twelve'.size
      when 3
        @letter_count += 'thirteen'.size
      when 4
        @letter_count += 'fourteen'.size
      when 5
        @letter_count += 'fifteen'.size
      when 6
        @letter_count += 'sixteen'.size
      when 7
        @letter_count += 'seventeen'.size
      when 8
        @letter_count += 'eighteen'.size
      when 9
        @letter_count += "nineteen".size
      end
  when 2
    @letter_count += 'twenty'.size
  when 3
    @letter_count += 'thirty'.size
  when 4
    @letter_count += 'forty'.size
  when 5
    @letter_count += 'fifty'.size
  when 6
    @letter_count += 'sixty'.size
  when 7
    @letter_count += 'seventy'.size
  when 8
    @letter_count += 'eighty'.size
  when 9
    @letter_count += 'ninety'.size
  end

  if tens != 1
    case ones
    when 0
      @letter_count += 0
    when 1
      @letter_count += 'one'.size
    when 2
      @letter_count += 'two'.size
    when 3
      @letter_count += 'three'.size
    when 4
      @letter_count += 'four'.size
    when 5
      @letter_count += 'five'.size
    when 6
      @letter_count += 'six'.size
    when 7
      @letter_count += 'seven'.size
    when 8
      @letter_count += 'eight'.size
    when 9
      @letter_count += 'nine'.size
    end
  end
end

@letter_count += 'onethousand'.size

puts @letter_count
