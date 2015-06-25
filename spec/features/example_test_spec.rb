require 'rails_helper'

feature 'Test feature' do
  background do
    puts 'Dummy Background'
  end

  scenario 'Test Home Rendering' do
    expect(true).to be(true)
  end
end
