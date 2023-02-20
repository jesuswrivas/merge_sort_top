
def merge_sort (array)
    #We need this function in the recursive part of the  merge_sorte function
    def merge(left,right)
        aux_array = []
        while left.length > 0 && right.length > 0
          if left[0] > right[0] 
            aux_array << right.shift                               
          else
            aux_array <<  left.shift
          end
        end
    
        aux_array += left + right
        
        return aux_array
      end
    

    #Base case
    if array.length == 1
        return array
    end

    right_array = array[array.length/2, array.length]
    left_array = array[0, array.length/2]

    return  merge(merge_sort(left_array), merge_sort(right_array))

end




