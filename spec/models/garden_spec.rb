require 'rails_helper'
# rspec spec/models/garden_spec.rb
RSpec.describe Garden do
  describe 'relationships' do
    it { should have_many(:plots) }
  end
end
