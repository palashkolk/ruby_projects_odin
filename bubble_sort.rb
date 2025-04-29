def bubble_sort(array)
  array_length=array.length
  flag=true
  stop=array_length-2
  index=0
  while flag do
    flag=false
    for i in 0..stop
        if array[i] > array[i+1]
          temp=array[i+1]
          array[i+1]=array[i]
          array[i]=temp
          flag=true
        end
    end
    stop-=1
  end
  array
end

def bubble_sort1(array)
  array_length=array.length
  start=0
  stop=array_length-1
  indx=0
  while indx <stop do
    if array[indx] > array[indx+1]
      array.each_with_index do |number, index|
        if ((index+1)<array_length)&&(number > array[index+1])
          temp=array[index+1]
          array[index+1]=number
          array[index]=temp
        end
      end
      indx=0
    else
      indx+=1
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])