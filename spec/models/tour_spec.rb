require 'spec_helper'

describe Tour do
  let!(:category) { FactoryGirl.build(:category) }
  let!(:tour) { FactoryGirl.build(:tour, categories: []) }

  it 'should not be valid without a category' do
    tour.should_not be_valid
  end

  it 'should be valid with a category' do
    tour.categories << category
    tour.should be_valid
  end
end
