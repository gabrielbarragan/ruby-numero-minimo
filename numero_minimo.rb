if __FILE__ == $PROGRAM_NAME

    def sorting(array)
        
        if array.length > 1
            midd = array.length / 2
            left_array = array.slice(0,midd)
            right_array = array.slice(midd,array.length)

            sorting(left_array)
            sorting(right_array)

            i = 0
            j = 0
            k = 0

            while i < left_array.length and j < right_array.length
                if left_array[i] <= right_array[j]
                    array[k] = left_array[i]
                    i+=1
                else
                    array[k] = right_array[j]
                    j+=1
                end
                k+=1
            end
                
            while i < left_array.length
                array[k] = left_array[i]
                i+=1
                k+=1
            end
            while j < right_array.length
                array[k] = right_array[j]
                j+=1
                k+=1
                
            end

        end
        
        return array
        
    end

    def max(array)

        new_array = sorting(array)
        max_num= new_array[0]

        return max_num
    end
    p max([-10, -20, 0, 10, 20]) == -20
    p max([1, 2, 3, 4, 5]) == 1
    p max([5, 4, 3, 2, 1]) == 1
    p max([35,1,-30,-40,-10,80,81,55,93,90,92.9]) == -30

end