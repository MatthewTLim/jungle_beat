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
      #if there is already a head create new node at end of first node
    def
  end


 end

