class Array
  def uniq
    no_repeats = []
    self.each do |element|
      if !no_repeats.include?(element)
        no_repeats.push(element)
      end
    end
    no_repeats
  end
end

=begin similar problem - non duplicated values
def uniq
  no_repeats = []
  self.each do |element|
    if self.count(element) == 1
      no_repeats.push(element)
    end
  end
  no_repeats
end
=end
