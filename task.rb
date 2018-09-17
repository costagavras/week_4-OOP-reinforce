# Create a Task class with a description and due_date (both strings).
# Define an initialize method as well as "reader" and "writer" methods for those attributes.
# Try creating three instances of this class and test out the reader and writer methods.

# Create a TodoList class with a tasks array (which will contain instances of the Task class).
# Create an initialize method and an add_task method that allows you to pass in an instance of your Task class.
# Try creating a todo list and adding your three tasks to it.

class Task

  @@task_list = []

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def self.add_task(description, due_date)
    new_task = Task.new(description, due_date)
    @@task_list << new_task
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

Task.add_task("eat an apple once a day", "13.00")
Task.add_task("return the book to the library", "I forget, today")
Task.add_task("do taxes", "30.04.2019")
puts Task.all.inspect
Task.test_readers
Task.test_writers
Task.add_task("learn ruby", "ASAP")
puts Task.all.inspect
