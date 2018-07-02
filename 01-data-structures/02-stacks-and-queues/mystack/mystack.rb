class MyStack
  attr_accessor :top
  attr_accessor :stack

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    self.top = item
    @stack << item
  end

  def pop
    last_person = @stack.delete_at(-1)
    self.top = @stack[-1]
    return last_person
  end

  def empty?
    if @stack.length === 0
      return true
    else
      return false
    end
  end
end