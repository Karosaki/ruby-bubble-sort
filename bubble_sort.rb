# for each element in the list look at it [i] and the element directly next to it [i + 1]
# if they are out of order, swap them

# optimisations
# for k passes you do not need to check n-(k+1)
# check for sorted using a counter

def bubble_sort(array)
    for x in array # as many times as there are elements (not optimised yet)
        array.each_index do |i|
            # checking for nil
            if array[i+1] == nil
                next
            end
            # comparing element and element next to it
            first = array[i]
            second = array[i+1]
            if first > second # if they are out of order, swap them
                array[i] = second
                array[i+1] = first
            end
        end

        array
    end
end

array = [9, 6, 5, 3, 2]
bubble_sort(array)
p array
