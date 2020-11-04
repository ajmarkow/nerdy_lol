require 'rails_helper'

describe Discussion do
  # Association Tests
    #it { should belong_to :post }
    #it { should belong_to :user }
  it { should have_many :posts}
  
  #Validation Tests
  it { should validate_presence_of :title }
  
  it { should validate_presence_of :content_body }

end
