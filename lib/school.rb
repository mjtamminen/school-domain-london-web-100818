class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !roster.include?(grade)
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
