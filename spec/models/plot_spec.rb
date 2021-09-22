require 'rails_helper'
# rspec spec/models/plot_spec.rb

RSpec.describe Plot do
  describe 'relationships' do
    it { should belong_to(:garden) }
    it { should have_many(:plot_plants) }
    it { should have_many(:plants).through(:plot_plants) }

  end
end
