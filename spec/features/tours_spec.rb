require 'spec_helper'

describe "Tours" do
  context 'start page' do
    let!(:tour) { FactoryGirl.create(:tour) }

    it 'shows all tours on the start page' do
      visit root_path

      page.should have_content tour.title
    end
    
  end
end
