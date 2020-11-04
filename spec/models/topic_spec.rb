require 'rails_helper'

describe Topic do 
  it { should have_many :discussions}
end