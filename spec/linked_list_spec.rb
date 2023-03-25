require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  
  it 'exists' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to eq(nil)
  end
    
  it 'has append' do
    list = LinkedList.new
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(@next_node).to eq(nil)
  end

  it 'has count' do
    list = LinkedList.new
    expect(list.count).to eq(0)
    list.append("doop")
    expect(list.count).to eq(1)
  end

  it 'has to_string' do
    list = LinkedList.new
    list.append("doop")
    expect(list.to_string).to eq("doop")
  end

  it 'complex test' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
    expect(list.count).to eq(2)
    list.to_string
    expect(list.to_string).to eq("doop deep")
   
  end
end

  # before:(each) do @list = LinkedList.new 
  # end