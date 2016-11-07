require 'test_helper'

class RegistryTest < ActiveSupport::TestCase
  def setup
   @registry = Registry.new(name: 'John Doe', location: 'Boston', state: 'open')
 end

 test 'valid registry' do
   assert @registry.valid?
 end

test 'invalid without name' do
  @registry.name = nil
  refute @registry.valid?, 'saved registry without a name'
  assert_not_nil @registry.errors[:name], 'no validation error for name present'
end

test 'invalid without location' do
  @registry.location = nil
  refute @registry.valid?, 'saved registry without a location'
  assert_not_nil @registry.errors[:location], 'no validation error for location present'
end

test 'invalid without state' do
  @registry.state = nil
  refute @registry.valid?, 'saved registry without a state'
  assert_not_nil @registry.errors[:state], 'no validation error for state present'
end



end
