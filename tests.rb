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

