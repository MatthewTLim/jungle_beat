class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

    # takes in a value check if linkedlist is empty(nil) 
    # then sets head to new node and store new value in node
  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end
  #if there is already a head create new node at end of first node
  def count
    count = 0
  current_node = @head
    while current_node != nil
    count += 1
    current_node = current_node.next_node
    end
    count
  end
  
  def to_string
    current_node = @head
    string = ""
    while current_node != nil
      string += current_node.data.to_s
      current_node = current_node.next_node
      string += " " unless current_node.nil?
    end
    string
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data, nil)
    else
      new_node = Node.new(data, @head)
      @head = new_node
    end
  end
  # To prepend to a linked list, you simply create a new node, and have 
  #it point to the node that was previously the head. Now, it becomes the new head.
end
