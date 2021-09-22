require 'rails_helper'
# rspec spec/models/plot_spec.rb

RSpec.describe Plot do
  describe 'relationships' do
    it { should belong_to(:garden) }
  end
end
