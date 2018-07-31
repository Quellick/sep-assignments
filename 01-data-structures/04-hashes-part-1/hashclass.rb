require_relative 'hash_item'

class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    new_item = HashItem.new(key, value)
    hash_index = index(key, size) 
    if @items[hash_index] == nil
     
      @items[index(key,size)] = new_item
    elsif @items[hash_index].key != key
     
      while !@items[index(key,size)].nil? do 
        self.resize
      end
      @items[index(key,size)] = new_item
    elsif @items[hash_index].key == key && @items[hash_index].value != value
      
      self.resize
      @items[index(key,size)] = new_item
    end
  end


  def [](key)
    return @items[index(key,size)].value
  end

  def resize
    new_size = 0
    temp_items = @items
    new_size = @items.length * 2
    @items = Array.new(new_size)
    temp_items.each do |x|
      if !x.nil?
        new_item = HashItem.new(x.key,x.value)
        @items[index(x.key,new_size)] = new_item
      end
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    total_sum = 0
    key.each_byte do |x|
      total_sum += x
    end
    return total_sum % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

end