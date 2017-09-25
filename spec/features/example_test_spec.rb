require 'rails_helper'

feature 'Test feature' do
  background do
    puts 'Dummy Background'
  end

  let!(:truly) { true }

  scenario 'Test Home Rendering' do
    expect(truly).to be(true)
  end
end
