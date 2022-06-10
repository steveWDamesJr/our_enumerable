require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    (0...@list.length).each do |list|
      yield @list[list]
    end
  end
end

list = MyList.new(1, 2, 3, 4) # Test #all?

puts(list.all? { |e| e < 5 })
# => true
puts(list.all? { |e| e > 5 })
# => false# # Test #any?
puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false# # Test #filter
puts(list.filter(&:even?))
# => [2, 4]
