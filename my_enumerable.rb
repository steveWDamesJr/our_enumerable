module MyEnumerable
  def all?
    check_enum = true
    each do |n|
      check_enum = false unless yield n
    end
    check_enum
  end

  def any?
    check_enum = false
    each do |n|
      check_enum = true if yield n
    end
    check_enum
  end

  def filter
    check_enum = []
    each do |n|
      check_enum.push(n) if yield n
    end
    check_enum
  end
end
