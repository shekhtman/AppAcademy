def recursion(number, base, answer_array = [])

  if number == 0
    return answer_array
  else
   answer_array.unshift(number % base)
   number = number / base
   recursion(number, base, answer_array)
  end
end


def num_to_s(num, base)
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

  result = recursion(num,base)
  string = result.map {|number| num_hash[number]}.join("")
end

p num_to_s(108,16)