require 'spec_helper'

describe Article do

  describe 'Associations' do
    it { should have_many :comments }
  end

  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
  
end
