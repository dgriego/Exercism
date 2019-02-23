class FlattenArray
  def self.flatten(arr, new_arr = [])
    current_index = 0

    while current_index < arr.length
      obj = arr[current_index]

      if obj.instance_of? Array
        flatten(obj, new_arr)
      else
        new_arr << obj unless obj.nil?
      end

      current_index += 1
    end

    new_arr
  end
end

#
# tried this approach as well, but it is not nearly as performant
#
# class FlattenArray
#   def self.flatten(arr)
#     arr_to_str = arr.to_s.gsub(/(\]|\[)+/, '')

#     arr_to_str.split(',').each_with_object([]) do |elem, arr|
#       elem = eval(elem)

#       arr << elem unless elem.nil?
#     end
#   end
# end
