def num_to_s(num, base)
  
  string_array = []

  num_hash = {
    0 => '0',
    1 => '1',
    2 => '2',
    3 => '3',
    4 => '4',
    5 => '5',
    6 => '6',
    7 => '7',
    8 => '8',
    9 => '9',
    10 => 'a',
    11 => 'b',
    12 => 'c',
    13 => 'd',
    14 => 'e',
    15 => 'f'
  }

  while num > 0
      string_array.unshift(num % base)
      num = num / base
  end

  string_array.map {|num| num_hash[num]}.join("")

end

p num_to_s(100,2)
p num_to_s(100,3)
p num_to_s(100,4)
p num_to_s(100,5)
p num_to_s(100,6)
p num_to_s(100,7)
p num_to_s(100,8)
p num_to_s(100,9)
p num_to_s(100,10)
p num_to_s(100,11)
p num_to_s(100,12)
p num_to_s(100,13)
p num_to_s(100,14)
p num_to_s(100,15)
p num_to_s(100,16)
