# Create a Task class with a description and due_date (both strings).
# Define an initialize method as well as "reader" and "writer" methods for those attributes.
# Try creating three instances of this class and test out the reader and writer methods.

class Task

  @@task_list = []

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def self.create(description, due_date)
    new_task = Task.new(description, due_date)
  end

  def self.task_list_create
    apple = Task.create("eat an apple once a day", "13.00")
    @@task_list << apple
    book = Task.create("return the book to the library", "I forget, today")
    @@task_list << book
    taxes = Task.create("do taxes", "30.04.2019")
    @@task_list << taxes
    return @@task_list
end

  # readers methods
  def description
    return @description
  end

  def due_date
    return @due_date
  end

  def self.all
    return @@task_list
  end

  # writer methods
  def description=(description)
    @description = description
  end

  def due_date=(due_date)
    @due_date = due_date
  end

  def self.test_readers
    i = 0
    all.each do |task|
      puts "My task #{i += 1} is to #{task.description} before #{task.due_date}."
    end
  end

  def self.test_writers
    i = 0
    arr_completion = ["successfully completed", "not completed"]
    all.each do |task|
      task.description = arr_completion.sample
      task.due_date = "before set time"
      puts "Task #{i += 1} is #{task.description} #{task.due_date}."
    end
  end

end

# apple = Task.create("eat an apple once a day", "13.00")
# book = Task.create("return the book to the library", "I forget, today")
# taxes = Task.create("do taxes", "30.04.2019")
# puts apple.inspect
# puts book.inspect
# puts taxes.inspect
# puts apple.description
Task.task_list_create
puts Task.all.inspect
Task.test_readers
Task.test_writers
# Task.test_attributes(apple)
# Task.test_attributes(book)
# Task.test_attributes(taxes)
