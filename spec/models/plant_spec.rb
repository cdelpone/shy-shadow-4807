require 'rails_helper'
# rspec spec/models/plant_spec.rb

RSpec.describe Plant do
  describe 'relationships' do
    it { should have_many :plot_plants }
  end
end
