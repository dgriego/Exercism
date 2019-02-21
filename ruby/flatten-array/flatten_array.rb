# except an array of without any amount of nested arrays

# recursion would work well for this

# loop through array and add to an array
#   if array
#     loop through array and add to an array
#   else
#     add to array

# for each value
#   add to array if not an array
#   else
#   loop through array and add to array
#     if array
#       loop through array and add to array

# need parent level array and loops that have access to outer scope


# ////////
# create new array [], this will be passed in as initializer

# the initializer will be passed in to check for new values that need to be added
# the array arg to check if the array arg is empty

# when the array arg is passed in, track current index to track whether it is done being looped
# through

# loop through arr arg
#   check each value

#   if arr
#     loop through arr
#       check each value
#         if arr
#           check each value
#         else
#           add to new array
#   else
#     add to new array << new value

# init func flatten(initial = [], arr, currentIndex = 0)
#   start loop through arr
#     set currentIndex
#     check for type

#     if type array
#     else
#       add to initializer

#   if currentIndex equals arrays length - 1 => means it is done
#     return initializer
#   else
#     flatten(initializer, arr, currentIndex)

require "pry"
# /////////
class FlattenArray
  def self.flatten(origArr)
    deepLoop = ->(origArr, initializer = [], currentIndex = 0) do

      while currentIndex < origArr.length
        obj = origArr[currentIndex]

        if obj.instance_of? Array
          # deepLoop.call(obj, initializer, currentIndex)
        else
          initializer << obj
        end

        # initializer << obj unless obj.nil?

        # deepLoop.call(origArr, initializer, currentIndex)
        currentIndex += 1
      end
      # origArr.each_with_index do |obj, index|
      #   return index if index == 2
      #   currentIndex = index

        # if obj.instance_of? Array
        #   deepLoop.call(origArr, initializer, currentIndex)
        # else
        #   initializer << obj unless obj.nil?

        #   deepLoop.call(origArr, initializer, currentIndex) if currentIndex < origArr.length
        # end
      # end

      initializer
    end

    p deepLoop.call(origArr)

    # arr.each do |obj, idx|
    #   currentIndex = idx
    #   count += 1

    #   if obj.instance_of? Array
    #     flatten(initializer, count, currentIndex, arr)
    #   else
    #     initializer << obj
    #   end
    # end

    # return initializer if (currentIndex == arr.length - 1)

    # flatten(initializer, currentIndex, arr)
  end
end

FlattenArray.flatten [1, [2, 3, 4, 5, 6, 7], 8]