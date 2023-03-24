require 'rspec'
require "./lib/node"

RSpec.describe Node do
  it 'exists' do
  node1 = Node.new("plop")
  expect(node1).to be_an_instance_of(Node)
  expect(node1.data).to eq("plop")
  expect(node1.next_node).to eq(nil)
end
  
end
