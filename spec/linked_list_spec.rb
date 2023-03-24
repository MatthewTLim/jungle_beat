require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  
  it 'exists' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

end