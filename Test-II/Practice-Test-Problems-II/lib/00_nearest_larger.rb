def nearest_larger(array, index)

	off_set_left = index - 1
	off_set_rigth = index + 1

	while off_set_left >= 0
		if array[off_set_left] > array[index]
			return off_set_left
		elsif off_set_left < 0
			offset_left = nil
		end
		off_set_left -= 1
	end

	while off_set_rigth < array.length
		if array[off_set_rigth] > array[index]
			return off_set_rigth
		elsif off_set_rigth > array.length
			off_set_rigth = nil
		end
		off_set_rigth += 1
	end

	#off_set_left == nil && off_set_rigth = nil
	return nil

end
