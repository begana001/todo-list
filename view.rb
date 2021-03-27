class View
  def display(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{done} #{task[index+1]} - #{task.title}"
    end
  end

  def ask_user_for_title
    puts "What you want to do?"
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    return gets.chomp.to_i - 1
  end
end
