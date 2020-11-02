require 'rails_helper'

describe Post do
  it {should have_and_belong_to_one :thread}
end

