arr1 = ['boy', 'girl', 'animal', 'tree']
arr2 = ['book', 'building', 'boy', 'street', 'animal']

#puts arr1 & arr2

arr1.each do |x|
  if (arr2.include?(x))
    print "#{x} "
  end
end
