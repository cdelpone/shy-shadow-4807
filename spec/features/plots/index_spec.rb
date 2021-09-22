require 'rails_helper'
# rspec spec/features/plots/index_spec.rb
RSpec.describe 'Plot Index Page' do
  before :each do
    @garden = Garden.create!(name: "Best Garden", organic: true)
    @plot1 = @garden.plots.create!(number: 1, size: "medium", direction: "South")
    @plot2 = @garden.plots.create!(number: 2, size: "large", direction: "North")
    @plant1 = Plant.create!(name: "Best Plant", description: "luscious", days_to_harvest: 5)
    @plant2 = Plant.create!(name: "Second Best Plant", description: "leafy", days_to_harvest: 10)
    @plant3 = Plant.create!(name: "A good Plant", description: "tall", days_to_harvest: 10)
    @plot1.plants << @plant1
    @plot1.plants << @plant2
    @plot2.plants << @plant3

    visit plots_path
  end

  describe 'display all plots and their plants' do
    it 'lists all plots and their plants' do
      expect(page).to have_content("All Plots")
      expect(page).to have_content(@plot1.number)
      expect(@plot1.plants).to eq([@plant1, @plant2])
      expect(page).to have_content(@plot2.number)
      expect(@plot2.plants).to eq([@plant3])
      save_and_open_page
    end

    it 'can delete each plant' do
      expect(page).to have_link('Delete')
      click_on "Delete Best Plant"
      expect(page).to have_no_content("Best Plant")

    end
  end
end
