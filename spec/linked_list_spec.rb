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

  it 'has count method' do
    list = LinkedList.new
    expect(list.count).to eq(1)
  end
end

  # before:(each) do @list = LinkedList.new 
  # end