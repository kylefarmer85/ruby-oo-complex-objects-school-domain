class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster=({})
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(num)
    return @roster[num]
  end

  def sort
    @roster.sort_by{|k,v| v}.to_h
  end

end
