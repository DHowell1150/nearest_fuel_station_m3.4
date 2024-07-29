require 'rails_helper'

RSpec.describe 'User can Search ', type: :feature do
  describe 'can search closest electric station' do
    describe 'HAPPY PATHS' do
      it 'displays' do
        visit root_path
        select "The Noshery", from: :location
        click_on "Find Nearest Station"
        expect(current_path).to eq(search_path)
        expect(page).to have_content("Closest Station:")
        within '.station' do #This doesn't test values.  refactor? 
          expect(page).to have_css('.name')
          expect(page).to have_css('.address')
          expect(page).to have_css('.fuel_type')
          expect(page).to have_css('.access_times')
          expect(page).to have_css('.distance')
        end
        within '.direction' do 
          expect(page).to have_css('.travel_time')
          expect(page).to have_css('.directions')
        end
      end
    end 
  end
end