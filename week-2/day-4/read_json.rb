require 'json'

class Task
  def initialize(task, who, dueDate, done)
    @task = task
    @who = who
    @dueDate = dueDate
    @done = done
  end
end

def read_json(filename)
  content = File.read(filename)
  data = JSON.parse(content)
  tasks = []
  data.each_with_index do |item, i|
    tasks[i] = Task.new(item['task'], item['who'], item['dueDate'], item['done'])
  end
  tasks
end

p read_json('tasks.json') # prints an array of Task objects
