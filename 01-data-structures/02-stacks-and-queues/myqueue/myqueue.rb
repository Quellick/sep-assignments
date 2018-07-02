class MyQueue
  attr_accessor :head
  attr_accessor :tail
  attr_accessor :queue

  def initialize
    @queue = Array.new
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def enqueue(element)
    @queue << element
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def dequeue
    first_person = @queue.delete_at(0)
    return first_person
  end

  def empty?
    if @queue.length === 0
      return true
    else
      return false
    end
  end
end