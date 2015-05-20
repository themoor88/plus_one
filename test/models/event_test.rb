require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "Should not save event without event_name, address_1, city, country, number_of_attendees, time, description, or category present" do
    event = Event.new
    assert_not event.save
  end

  test ""
  # test "the truth" do
  #   assert true
  # end
end
